import 'package:codebasetechtest/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:codebasetechtest/injection.dart';
import 'package:codebasetechtest/presentation/users/user_details_page.dart';
import 'package:codebasetechtest/presentation/users/user_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<UserWatcherBloc>()..add(const UserWatcherEvent.started()),
        ),
      ],
      child: const HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;

      if (maxScroll - currentScroll <= 200) {
        context.read<UserWatcherBloc>().add(const UserWatcherEvent.loadMore());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserWatcherBloc, UserWatcherState>(
          listener: (context, state) {},
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
          actions: [
            BlocBuilder<UserWatcherBloc, UserWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) {
                    return IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                UserSearchPage(allUsers: s.users),
                          ),
                        );
                      },
                    );
                  },
                  orElse: () => const SizedBox(),
                );
              },
            )
          ],
        ),
        body: BlocBuilder<UserWatcherBloc, UserWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const Center(child: CircularProgressIndicator()),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (s) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<UserWatcherBloc>()
                        .add(const UserWatcherEvent.started());
                  },
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount:
                        s.hasReachedEnd ? s.users.length : s.users.length + 1,
                    itemBuilder: (context, index) {
                      if (index < s.users.length) {
                        final user = s.users[index];
                        return Container(
                          alignment: Alignment.center,
                          height: 150,
                          color: Colors.yellow,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: ListTile(
                            title: Text(user.firstName),
                            subtitle: Text(user.email),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(user.avatar),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserDetailsPage(user),
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        // Show loading spinner while fetching next page
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                    },
                  ),
                );
              },
              failed: (f) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      f.failures.map(
                        networkFailure: (_) => "Check your network connection",
                        parsingFailure: (_) => "Parsing Failure",
                        serverFailure: (_) => "Server Failure",
                        unknownFailure: (f) => "Unknown Failure : ${f.message}",
                        timeOutFailure: (value) => "Server timeout",
                      ),
                    ),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {
                        context
                            .read<UserWatcherBloc>()
                            .add(const UserWatcherEvent.started());
                      },
                      child: const Text('Retry'),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
