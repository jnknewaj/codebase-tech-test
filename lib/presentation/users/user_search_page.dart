import 'package:codebasetechtest/application/users/user_search/user_search_bloc.dart';
import 'package:codebasetechtest/domain/users/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserSearchPage extends StatelessWidget {
  final List<User> allUsers;

  const UserSearchPage({super.key, required this.allUsers});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserSearchBloc(initialUsers: allUsers),
      child: Scaffold(
        appBar: AppBar(title: const Text("Search Users")),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (query) => context
                    .read<UserSearchBloc>()
                    .add(UserSearchEvent.searchChanged(query)),
                decoration: const InputDecoration(
                  hintText: 'Search by name or email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<UserSearchBloc, UserSearchState>(
                builder: (context, state) {
                  if (state.filteredUsers.isEmpty) {
                    return const Center(child: Text("No users found."));
                  }
                  return ListView.builder(
                    itemCount: state.filteredUsers.length,
                    itemBuilder: (context, index) {
                      final user = state.filteredUsers[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar),
                        ),
                        title: Text(user.firstName),
                        subtitle: Text(user.email),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
