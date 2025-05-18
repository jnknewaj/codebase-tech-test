// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchEventCopyWith<UserSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchEventCopyWith<$Res> {
  factory $UserSearchEventCopyWith(
          UserSearchEvent value, $Res Function(UserSearchEvent) then) =
      _$UserSearchEventCopyWithImpl<$Res, UserSearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$UserSearchEventCopyWithImpl<$Res, $Val extends UserSearchEvent>
    implements $UserSearchEventCopyWith<$Res> {
  _$UserSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res>
    implements $UserSearchEventCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$UserSearchEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'UserSearchEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of UserSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchChanged,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchChanged,
  }) {
    return searchChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements UserSearchEvent {
  const factory _SearchChanged(final String query) = _$SearchChangedImpl;

  @override
  String get query;

  /// Create a copy of UserSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSearchState {
  List<User> get allUsers => throw _privateConstructorUsedError;
  List<User> get filteredUsers => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of UserSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchStateCopyWith<UserSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchStateCopyWith<$Res> {
  factory $UserSearchStateCopyWith(
          UserSearchState value, $Res Function(UserSearchState) then) =
      _$UserSearchStateCopyWithImpl<$Res, UserSearchState>;
  @useResult
  $Res call({List<User> allUsers, List<User> filteredUsers, String query});
}

/// @nodoc
class _$UserSearchStateCopyWithImpl<$Res, $Val extends UserSearchState>
    implements $UserSearchStateCopyWith<$Res> {
  _$UserSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsers = null,
    Object? filteredUsers = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      allUsers: null == allUsers
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUsers: null == filteredUsers
          ? _value.filteredUsers
          : filteredUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSearchStateImplCopyWith<$Res>
    implements $UserSearchStateCopyWith<$Res> {
  factory _$$UserSearchStateImplCopyWith(_$UserSearchStateImpl value,
          $Res Function(_$UserSearchStateImpl) then) =
      __$$UserSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> allUsers, List<User> filteredUsers, String query});
}

/// @nodoc
class __$$UserSearchStateImplCopyWithImpl<$Res>
    extends _$UserSearchStateCopyWithImpl<$Res, _$UserSearchStateImpl>
    implements _$$UserSearchStateImplCopyWith<$Res> {
  __$$UserSearchStateImplCopyWithImpl(
      _$UserSearchStateImpl _value, $Res Function(_$UserSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsers = null,
    Object? filteredUsers = null,
    Object? query = null,
  }) {
    return _then(_$UserSearchStateImpl(
      allUsers: null == allUsers
          ? _value._allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      filteredUsers: null == filteredUsers
          ? _value._filteredUsers
          : filteredUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserSearchStateImpl implements _UserSearchState {
  const _$UserSearchStateImpl(
      {required final List<User> allUsers,
      required final List<User> filteredUsers,
      required this.query})
      : _allUsers = allUsers,
        _filteredUsers = filteredUsers;

  final List<User> _allUsers;
  @override
  List<User> get allUsers {
    if (_allUsers is EqualUnmodifiableListView) return _allUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allUsers);
  }

  final List<User> _filteredUsers;
  @override
  List<User> get filteredUsers {
    if (_filteredUsers is EqualUnmodifiableListView) return _filteredUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredUsers);
  }

  @override
  final String query;

  @override
  String toString() {
    return 'UserSearchState(allUsers: $allUsers, filteredUsers: $filteredUsers, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchStateImpl &&
            const DeepCollectionEquality().equals(other._allUsers, _allUsers) &&
            const DeepCollectionEquality()
                .equals(other._filteredUsers, _filteredUsers) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allUsers),
      const DeepCollectionEquality().hash(_filteredUsers),
      query);

  /// Create a copy of UserSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchStateImplCopyWith<_$UserSearchStateImpl> get copyWith =>
      __$$UserSearchStateImplCopyWithImpl<_$UserSearchStateImpl>(
          this, _$identity);
}

abstract class _UserSearchState implements UserSearchState {
  const factory _UserSearchState(
      {required final List<User> allUsers,
      required final List<User> filteredUsers,
      required final String query}) = _$UserSearchStateImpl;

  @override
  List<User> get allUsers;
  @override
  List<User> get filteredUsers;
  @override
  String get query;

  /// Create a copy of UserSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSearchStateImplCopyWith<_$UserSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
