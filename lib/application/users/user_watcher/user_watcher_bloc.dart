import 'package:bloc/bloc.dart';
import 'package:codebasetechtest/domain/users/i_user_repository.dart';
import 'package:codebasetechtest/domain/users/user.dart';
import 'package:codebasetechtest/domain/users/user_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_watcher_event.dart';
part 'user_watcher_state.dart';
part 'user_watcher_bloc.freezed.dart';

@injectable
class UserWatcherBloc extends Bloc<UserWatcherEvent, UserWatcherState> {
  final IUserRepository _userRepository;

  UserWatcherBloc(this._userRepository)
      : super(const UserWatcherState.initial()) {
    on<UserWatcherEvent>(_onEvents);
  }

  Future<void> _onEvents(
    UserWatcherEvent event,
    Emitter<UserWatcherState> emit,
  ) async {
    await event.map(
      started: (e) async {
        emit(const UserWatcherState.loading());
        final response = await _userRepository.getAllUsers(page: 1);

        response.fold(
          (l) => emit(UserWatcherState.failed(l)),
          (r) => emit(UserWatcherState.loaded(
              users: r, page: 1, hasReachedEnd: r.isEmpty)),
        );
      },
      loadMore: (e) async {
        print("INSIDE LOADMORE");
        final currentState = state;
        if (currentState is Loaded && !currentState.hasReachedEnd) {
          final nextPage = currentState.page + 1;
          final result = await _userRepository.getAllUsers(page: nextPage);
          result.fold(
            (l) => emit(UserWatcherState.failed(l)),
            (r) {
              if (r.isEmpty) {
                emit(currentState.copyWith(hasReachedEnd: true));
              } else {
                emit(currentState.copyWith(
                  users: [...currentState.users, ...r],
                  page: nextPage,
                ));
              }
            },
          );
        }
      },
    );
  }
}
