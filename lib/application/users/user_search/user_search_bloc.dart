import 'package:bloc/bloc.dart';
import 'package:codebasetechtest/domain/users/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_search_event.dart';
part 'user_search_state.dart';
part 'user_search_bloc.freezed.dart';

class UserSearchBloc extends Bloc<UserSearchEvent, UserSearchState> {
  UserSearchBloc({required List<User> initialUsers})
      : super(UserSearchState.initial(initialUsers)) {
    on<_SearchChanged>(_onSearchChanged);
  }

  void _onSearchChanged(
    _SearchChanged event,
    Emitter<UserSearchState> emit,
  ) {
    final query = event.query.toLowerCase();

    final filtered = state.allUsers.where((user) {
      return user.firstName.toLowerCase().contains(query) ||
          user.lastName.toLowerCase().contains(query) ||
          user.email.toLowerCase().contains(query);
    }).toList();

    emit(state.copyWith(
      filteredUsers: filtered,
      query: event.query,
    ));
  }
}
