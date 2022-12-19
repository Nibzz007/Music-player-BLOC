// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScreenSettingEvent {
  bool get newValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) getNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? getNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? getNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotification value) getNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotification value)? getNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotification value)? getNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenSettingEventCopyWith<ScreenSettingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSettingEventCopyWith<$Res> {
  factory $ScreenSettingEventCopyWith(
          ScreenSettingEvent value, $Res Function(ScreenSettingEvent) then) =
      _$ScreenSettingEventCopyWithImpl<$Res, ScreenSettingEvent>;
  @useResult
  $Res call({bool newValue});
}

/// @nodoc
class _$ScreenSettingEventCopyWithImpl<$Res, $Val extends ScreenSettingEvent>
    implements $ScreenSettingEventCopyWith<$Res> {
  _$ScreenSettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_value.copyWith(
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationCopyWith<$Res>
    implements $ScreenSettingEventCopyWith<$Res> {
  factory _$$GetNotificationCopyWith(
          _$GetNotification value, $Res Function(_$GetNotification) then) =
      __$$GetNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool newValue});
}

/// @nodoc
class __$$GetNotificationCopyWithImpl<$Res>
    extends _$ScreenSettingEventCopyWithImpl<$Res, _$GetNotification>
    implements _$$GetNotificationCopyWith<$Res> {
  __$$GetNotificationCopyWithImpl(
      _$GetNotification _value, $Res Function(_$GetNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$GetNotification(
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetNotification implements GetNotification {
  const _$GetNotification({required this.newValue});

  @override
  final bool newValue;

  @override
  String toString() {
    return 'ScreenSettingEvent.getNotification(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotification &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationCopyWith<_$GetNotification> get copyWith =>
      __$$GetNotificationCopyWithImpl<_$GetNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) getNotification,
  }) {
    return getNotification(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? getNotification,
  }) {
    return getNotification?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? getNotification,
    required TResult orElse(),
  }) {
    if (getNotification != null) {
      return getNotification(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotification value) getNotification,
  }) {
    return getNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotification value)? getNotification,
  }) {
    return getNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotification value)? getNotification,
    required TResult orElse(),
  }) {
    if (getNotification != null) {
      return getNotification(this);
    }
    return orElse();
  }
}

abstract class GetNotification implements ScreenSettingEvent {
  const factory GetNotification({required final bool newValue}) =
      _$GetNotification;

  @override
  bool get newValue;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationCopyWith<_$GetNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScreenSettingState {
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScreenSettingStateCopyWith<ScreenSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSettingStateCopyWith<$Res> {
  factory $ScreenSettingStateCopyWith(
          ScreenSettingState value, $Res Function(ScreenSettingState) then) =
      _$ScreenSettingStateCopyWithImpl<$Res, ScreenSettingState>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$ScreenSettingStateCopyWithImpl<$Res, $Val extends ScreenSettingState>
    implements $ScreenSettingStateCopyWith<$Res> {
  _$ScreenSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScreenSettingStateCopyWith<$Res>
    implements $ScreenSettingStateCopyWith<$Res> {
  factory _$$_ScreenSettingStateCopyWith(_$_ScreenSettingState value,
          $Res Function(_$_ScreenSettingState) then) =
      __$$_ScreenSettingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_ScreenSettingStateCopyWithImpl<$Res>
    extends _$ScreenSettingStateCopyWithImpl<$Res, _$_ScreenSettingState>
    implements _$$_ScreenSettingStateCopyWith<$Res> {
  __$$_ScreenSettingStateCopyWithImpl(
      _$_ScreenSettingState _value, $Res Function(_$_ScreenSettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ScreenSettingState(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenSettingState implements _ScreenSettingState {
  const _$_ScreenSettingState({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ScreenSettingState(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenSettingState &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenSettingStateCopyWith<_$_ScreenSettingState> get copyWith =>
      __$$_ScreenSettingStateCopyWithImpl<_$_ScreenSettingState>(
          this, _$identity);
}

abstract class _ScreenSettingState implements ScreenSettingState {
  const factory _ScreenSettingState({required final bool value}) =
      _$_ScreenSettingState;

  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenSettingStateCopyWith<_$_ScreenSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
