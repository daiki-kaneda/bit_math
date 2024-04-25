// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
mixin _$Setting {
// environment,ui setting
  bool get isSound => throw _privateConstructorUsedError;
  bool get isBGM => throw _privateConstructorUsedError;
  bool get isHapticFeedback => throw _privateConstructorUsedError;
  bool get isFixedJoystick => throw _privateConstructorUsedError;
  bool get isLeftJoystick =>
      throw _privateConstructorUsedError; // bitman setting
  BitmanWeapon get selectedWeapon => throw _privateConstructorUsedError;
  BitmanHelmet get selectedHelmet => throw _privateConstructorUsedError;
  BitmanColor get color => throw _privateConstructorUsedError;
  String get bitmanName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call(
      {bool isSound,
      bool isBGM,
      bool isHapticFeedback,
      bool isFixedJoystick,
      bool isLeftJoystick,
      BitmanWeapon selectedWeapon,
      BitmanHelmet selectedHelmet,
      BitmanColor color,
      String bitmanName});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSound = null,
    Object? isBGM = null,
    Object? isHapticFeedback = null,
    Object? isFixedJoystick = null,
    Object? isLeftJoystick = null,
    Object? selectedWeapon = null,
    Object? selectedHelmet = null,
    Object? color = null,
    Object? bitmanName = null,
  }) {
    return _then(_value.copyWith(
      isSound: null == isSound
          ? _value.isSound
          : isSound // ignore: cast_nullable_to_non_nullable
              as bool,
      isBGM: null == isBGM
          ? _value.isBGM
          : isBGM // ignore: cast_nullable_to_non_nullable
              as bool,
      isHapticFeedback: null == isHapticFeedback
          ? _value.isHapticFeedback
          : isHapticFeedback // ignore: cast_nullable_to_non_nullable
              as bool,
      isFixedJoystick: null == isFixedJoystick
          ? _value.isFixedJoystick
          : isFixedJoystick // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftJoystick: null == isLeftJoystick
          ? _value.isLeftJoystick
          : isLeftJoystick // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedWeapon: null == selectedWeapon
          ? _value.selectedWeapon
          : selectedWeapon // ignore: cast_nullable_to_non_nullable
              as BitmanWeapon,
      selectedHelmet: null == selectedHelmet
          ? _value.selectedHelmet
          : selectedHelmet // ignore: cast_nullable_to_non_nullable
              as BitmanHelmet,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BitmanColor,
      bitmanName: null == bitmanName
          ? _value.bitmanName
          : bitmanName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSound,
      bool isBGM,
      bool isHapticFeedback,
      bool isFixedJoystick,
      bool isLeftJoystick,
      BitmanWeapon selectedWeapon,
      BitmanHelmet selectedHelmet,
      BitmanColor color,
      String bitmanName});
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSound = null,
    Object? isBGM = null,
    Object? isHapticFeedback = null,
    Object? isFixedJoystick = null,
    Object? isLeftJoystick = null,
    Object? selectedWeapon = null,
    Object? selectedHelmet = null,
    Object? color = null,
    Object? bitmanName = null,
  }) {
    return _then(_$SettingImpl(
      isSound: null == isSound
          ? _value.isSound
          : isSound // ignore: cast_nullable_to_non_nullable
              as bool,
      isBGM: null == isBGM
          ? _value.isBGM
          : isBGM // ignore: cast_nullable_to_non_nullable
              as bool,
      isHapticFeedback: null == isHapticFeedback
          ? _value.isHapticFeedback
          : isHapticFeedback // ignore: cast_nullable_to_non_nullable
              as bool,
      isFixedJoystick: null == isFixedJoystick
          ? _value.isFixedJoystick
          : isFixedJoystick // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeftJoystick: null == isLeftJoystick
          ? _value.isLeftJoystick
          : isLeftJoystick // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedWeapon: null == selectedWeapon
          ? _value.selectedWeapon
          : selectedWeapon // ignore: cast_nullable_to_non_nullable
              as BitmanWeapon,
      selectedHelmet: null == selectedHelmet
          ? _value.selectedHelmet
          : selectedHelmet // ignore: cast_nullable_to_non_nullable
              as BitmanHelmet,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BitmanColor,
      bitmanName: null == bitmanName
          ? _value.bitmanName
          : bitmanName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingImpl with DiagnosticableTreeMixin implements _Setting {
  const _$SettingImpl(
      {required this.isSound,
      required this.isBGM,
      required this.isHapticFeedback,
      required this.isFixedJoystick,
      required this.isLeftJoystick,
      required this.selectedWeapon,
      required this.selectedHelmet,
      required this.color,
      required this.bitmanName});

  factory _$SettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingImplFromJson(json);

// environment,ui setting
  @override
  final bool isSound;
  @override
  final bool isBGM;
  @override
  final bool isHapticFeedback;
  @override
  final bool isFixedJoystick;
  @override
  final bool isLeftJoystick;
// bitman setting
  @override
  final BitmanWeapon selectedWeapon;
  @override
  final BitmanHelmet selectedHelmet;
  @override
  final BitmanColor color;
  @override
  final String bitmanName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Setting(isSound: $isSound, isBGM: $isBGM, isHapticFeedback: $isHapticFeedback, isFixedJoystick: $isFixedJoystick, isLeftJoystick: $isLeftJoystick, selectedWeapon: $selectedWeapon, selectedHelmet: $selectedHelmet, color: $color, bitmanName: $bitmanName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Setting'))
      ..add(DiagnosticsProperty('isSound', isSound))
      ..add(DiagnosticsProperty('isBGM', isBGM))
      ..add(DiagnosticsProperty('isHapticFeedback', isHapticFeedback))
      ..add(DiagnosticsProperty('isFixedJoystick', isFixedJoystick))
      ..add(DiagnosticsProperty('isLeftJoystick', isLeftJoystick))
      ..add(DiagnosticsProperty('selectedWeapon', selectedWeapon))
      ..add(DiagnosticsProperty('selectedHelmet', selectedHelmet))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('bitmanName', bitmanName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
            (identical(other.isSound, isSound) || other.isSound == isSound) &&
            (identical(other.isBGM, isBGM) || other.isBGM == isBGM) &&
            (identical(other.isHapticFeedback, isHapticFeedback) ||
                other.isHapticFeedback == isHapticFeedback) &&
            (identical(other.isFixedJoystick, isFixedJoystick) ||
                other.isFixedJoystick == isFixedJoystick) &&
            (identical(other.isLeftJoystick, isLeftJoystick) ||
                other.isLeftJoystick == isLeftJoystick) &&
            (identical(other.selectedWeapon, selectedWeapon) ||
                other.selectedWeapon == selectedWeapon) &&
            (identical(other.selectedHelmet, selectedHelmet) ||
                other.selectedHelmet == selectedHelmet) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.bitmanName, bitmanName) ||
                other.bitmanName == bitmanName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSound,
      isBGM,
      isHapticFeedback,
      isFixedJoystick,
      isLeftJoystick,
      selectedWeapon,
      selectedHelmet,
      color,
      bitmanName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      __$$SettingImplCopyWithImpl<_$SettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingImplToJson(
      this,
    );
  }
}

abstract class _Setting implements Setting {
  const factory _Setting(
      {required final bool isSound,
      required final bool isBGM,
      required final bool isHapticFeedback,
      required final bool isFixedJoystick,
      required final bool isLeftJoystick,
      required final BitmanWeapon selectedWeapon,
      required final BitmanHelmet selectedHelmet,
      required final BitmanColor color,
      required final String bitmanName}) = _$SettingImpl;

  factory _Setting.fromJson(Map<String, dynamic> json) = _$SettingImpl.fromJson;

  @override // environment,ui setting
  bool get isSound;
  @override
  bool get isBGM;
  @override
  bool get isHapticFeedback;
  @override
  bool get isFixedJoystick;
  @override
  bool get isLeftJoystick;
  @override // bitman setting
  BitmanWeapon get selectedWeapon;
  @override
  BitmanHelmet get selectedHelmet;
  @override
  BitmanColor get color;
  @override
  String get bitmanName;
  @override
  @JsonKey(ignore: true)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
