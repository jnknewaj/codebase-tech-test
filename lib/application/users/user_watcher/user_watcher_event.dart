part of 'user_watcher_bloc.dart';

@freezed
class UserWatcherEvent with _$UserWatcherEvent {
  const factory UserWatcherEvent.started() = Started;
  const factory UserWatcherEvent.loadMore() = LoadMore;
}
