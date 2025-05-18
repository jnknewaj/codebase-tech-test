part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherState with _$UserWatcherState {
  const factory UserWatcherState.initial() = Initial;
  const factory UserWatcherState.loading() = Loading;
  const factory UserWatcherState.loaded({
    required List<User> users,
    required int page,
    required bool hasReachedEnd,
  }) = Loaded;
  const factory UserWatcherState.failed(UserFailures failures) = Failed;
}
