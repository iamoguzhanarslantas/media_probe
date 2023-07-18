// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashPageState {
  bool get appInitialized => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashPageStateCopyWith<SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
  @useResult
  $Res call({bool appInitialized, bool hasError});
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInitialized = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      appInitialized: null == appInitialized
          ? _value.appInitialized
          : appInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashPageStateCopyWith<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  factory _$$_SplashPageStateCopyWith(
          _$_SplashPageState value, $Res Function(_$_SplashPageState) then) =
      __$$_SplashPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool appInitialized, bool hasError});
}

/// @nodoc
class __$$_SplashPageStateCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$_SplashPageState>
    implements _$$_SplashPageStateCopyWith<$Res> {
  __$$_SplashPageStateCopyWithImpl(
      _$_SplashPageState _value, $Res Function(_$_SplashPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appInitialized = null,
    Object? hasError = null,
  }) {
    return _then(_$_SplashPageState(
      appInitialized: null == appInitialized
          ? _value.appInitialized
          : appInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SplashPageState implements _SplashPageState {
  const _$_SplashPageState(
      {required this.appInitialized, required this.hasError});

  @override
  final bool appInitialized;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'SplashPageState(appInitialized: $appInitialized, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashPageState &&
            (identical(other.appInitialized, appInitialized) ||
                other.appInitialized == appInitialized) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appInitialized, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashPageStateCopyWith<_$_SplashPageState> get copyWith =>
      __$$_SplashPageStateCopyWithImpl<_$_SplashPageState>(this, _$identity);
}

abstract class _SplashPageState implements SplashPageState {
  const factory _SplashPageState(
      {required final bool appInitialized,
      required final bool hasError}) = _$_SplashPageState;

  @override
  bool get appInitialized;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_SplashPageStateCopyWith<_$_SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
