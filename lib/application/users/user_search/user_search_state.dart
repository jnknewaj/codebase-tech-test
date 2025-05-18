part of 'user_search_bloc.dart';

@freezed
class UserSearchState with _$UserSearchState {
  const factory UserSearchState({
    required List<User> allUsers,
    required List<User> filteredUsers,
    required String query,
  }) = _UserSearchState;

  factory UserSearchState.initial(List<User> allUsers) => UserSearchState(
        allUsers: allUsers,
        filteredUsers: [],
        query: '',
      );
}
