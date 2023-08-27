// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userAuthorized,
    required TResult Function() userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UserAuthorized value) userAuthorized,
    required TResult Function(_UserUnauthorized value) userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UserAuthorized value)? userAuthorized,
    TResult? Function(_UserUnauthorized value)? userUnauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UserAuthorized value)? userAuthorized,
    TResult Function(_UserUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'AuthState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UserAuthorized value) userAuthorized,
    required TResult Function(_UserUnauthorized value) userUnauthorized,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UserAuthorized value)? userAuthorized,
    TResult? Function(_UserUnauthorized value)? userUnauthorized,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UserAuthorized value)? userAuthorized,
    TResult Function(_UserUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_UserAuthorizedCopyWith<$Res> {
  factory _$$_UserAuthorizedCopyWith(
          _$_UserAuthorized value, $Res Function(_$_UserAuthorized) then) =
      __$$_UserAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UserAuthorized>
    implements _$$_UserAuthorizedCopyWith<$Res> {
  __$$_UserAuthorizedCopyWithImpl(
      _$_UserAuthorized _value, $Res Function(_$_UserAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserAuthorized implements _UserAuthorized {
  const _$_UserAuthorized();

  @override
  String toString() {
    return 'AuthState.userAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return userAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return userAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userAuthorized != null) {
      return userAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UserAuthorized value) userAuthorized,
    required TResult Function(_UserUnauthorized value) userUnauthorized,
  }) {
    return userAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UserAuthorized value)? userAuthorized,
    TResult? Function(_UserUnauthorized value)? userUnauthorized,
  }) {
    return userAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UserAuthorized value)? userAuthorized,
    TResult Function(_UserUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userAuthorized != null) {
      return userAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UserAuthorized implements AuthState {
  const factory _UserAuthorized() = _$_UserAuthorized;
}

/// @nodoc
abstract class _$$_UserUnauthorizedCopyWith<$Res> {
  factory _$$_UserUnauthorizedCopyWith(
          _$_UserUnauthorized value, $Res Function(_$_UserUnauthorized) then) =
      __$$_UserUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserUnauthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UserUnauthorized>
    implements _$$_UserUnauthorizedCopyWith<$Res> {
  __$$_UserUnauthorizedCopyWithImpl(
      _$_UserUnauthorized _value, $Res Function(_$_UserUnauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserUnauthorized implements _UserUnauthorized {
  const _$_UserUnauthorized();

  @override
  String toString() {
    return 'AuthState.userUnauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userAuthorized,
    required TResult Function() userUnauthorized,
  }) {
    return userUnauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userAuthorized,
    TResult? Function()? userUnauthorized,
  }) {
    return userUnauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userAuthorized,
    TResult Function()? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userUnauthorized != null) {
      return userUnauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UserAuthorized value) userAuthorized,
    required TResult Function(_UserUnauthorized value) userUnauthorized,
  }) {
    return userUnauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UserAuthorized value)? userAuthorized,
    TResult? Function(_UserUnauthorized value)? userUnauthorized,
  }) {
    return userUnauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UserAuthorized value)? userAuthorized,
    TResult Function(_UserUnauthorized value)? userUnauthorized,
    required TResult orElse(),
  }) {
    if (userUnauthorized != null) {
      return userUnauthorized(this);
    }
    return orElse();
  }
}

abstract class _UserUnauthorized implements AuthState {
  const factory _UserUnauthorized() = _$_UserUnauthorized;
}
