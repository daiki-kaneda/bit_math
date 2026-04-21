// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Setting implements DiagnosticableTreeMixin {

// environment,ui setting
 bool get isSound; bool get isBGM; bool get isHapticFeedback; bool get isFixedJoystick; bool get isLeftJoystick; bool get reviewRequested;// bitman setting
 BitmanWeapon get selectedWeapon; BitmanHelmet get selectedHelmet; BitmanColor get color; String get bitmanName;// iap setting
 bool get removedAd;
/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingCopyWith<Setting> get copyWith => _$SettingCopyWithImpl<Setting>(this as Setting, _$identity);

  /// Serializes this Setting to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Setting'))
    ..add(DiagnosticsProperty('isSound', isSound))..add(DiagnosticsProperty('isBGM', isBGM))..add(DiagnosticsProperty('isHapticFeedback', isHapticFeedback))..add(DiagnosticsProperty('isFixedJoystick', isFixedJoystick))..add(DiagnosticsProperty('isLeftJoystick', isLeftJoystick))..add(DiagnosticsProperty('reviewRequested', reviewRequested))..add(DiagnosticsProperty('selectedWeapon', selectedWeapon))..add(DiagnosticsProperty('selectedHelmet', selectedHelmet))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('bitmanName', bitmanName))..add(DiagnosticsProperty('removedAd', removedAd));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Setting&&(identical(other.isSound, isSound) || other.isSound == isSound)&&(identical(other.isBGM, isBGM) || other.isBGM == isBGM)&&(identical(other.isHapticFeedback, isHapticFeedback) || other.isHapticFeedback == isHapticFeedback)&&(identical(other.isFixedJoystick, isFixedJoystick) || other.isFixedJoystick == isFixedJoystick)&&(identical(other.isLeftJoystick, isLeftJoystick) || other.isLeftJoystick == isLeftJoystick)&&(identical(other.reviewRequested, reviewRequested) || other.reviewRequested == reviewRequested)&&(identical(other.selectedWeapon, selectedWeapon) || other.selectedWeapon == selectedWeapon)&&(identical(other.selectedHelmet, selectedHelmet) || other.selectedHelmet == selectedHelmet)&&(identical(other.color, color) || other.color == color)&&(identical(other.bitmanName, bitmanName) || other.bitmanName == bitmanName)&&(identical(other.removedAd, removedAd) || other.removedAd == removedAd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSound,isBGM,isHapticFeedback,isFixedJoystick,isLeftJoystick,reviewRequested,selectedWeapon,selectedHelmet,color,bitmanName,removedAd);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Setting(isSound: $isSound, isBGM: $isBGM, isHapticFeedback: $isHapticFeedback, isFixedJoystick: $isFixedJoystick, isLeftJoystick: $isLeftJoystick, reviewRequested: $reviewRequested, selectedWeapon: $selectedWeapon, selectedHelmet: $selectedHelmet, color: $color, bitmanName: $bitmanName, removedAd: $removedAd)';
}


}

/// @nodoc
abstract mixin class $SettingCopyWith<$Res>  {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) _then) = _$SettingCopyWithImpl;
@useResult
$Res call({
 bool isSound, bool isBGM, bool isHapticFeedback, bool isFixedJoystick, bool isLeftJoystick, bool reviewRequested, BitmanWeapon selectedWeapon, BitmanHelmet selectedHelmet, BitmanColor color, String bitmanName, bool removedAd
});




}
/// @nodoc
class _$SettingCopyWithImpl<$Res>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._self, this._then);

  final Setting _self;
  final $Res Function(Setting) _then;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSound = null,Object? isBGM = null,Object? isHapticFeedback = null,Object? isFixedJoystick = null,Object? isLeftJoystick = null,Object? reviewRequested = null,Object? selectedWeapon = null,Object? selectedHelmet = null,Object? color = null,Object? bitmanName = null,Object? removedAd = null,}) {
  return _then(_self.copyWith(
isSound: null == isSound ? _self.isSound : isSound // ignore: cast_nullable_to_non_nullable
as bool,isBGM: null == isBGM ? _self.isBGM : isBGM // ignore: cast_nullable_to_non_nullable
as bool,isHapticFeedback: null == isHapticFeedback ? _self.isHapticFeedback : isHapticFeedback // ignore: cast_nullable_to_non_nullable
as bool,isFixedJoystick: null == isFixedJoystick ? _self.isFixedJoystick : isFixedJoystick // ignore: cast_nullable_to_non_nullable
as bool,isLeftJoystick: null == isLeftJoystick ? _self.isLeftJoystick : isLeftJoystick // ignore: cast_nullable_to_non_nullable
as bool,reviewRequested: null == reviewRequested ? _self.reviewRequested : reviewRequested // ignore: cast_nullable_to_non_nullable
as bool,selectedWeapon: null == selectedWeapon ? _self.selectedWeapon : selectedWeapon // ignore: cast_nullable_to_non_nullable
as BitmanWeapon,selectedHelmet: null == selectedHelmet ? _self.selectedHelmet : selectedHelmet // ignore: cast_nullable_to_non_nullable
as BitmanHelmet,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as BitmanColor,bitmanName: null == bitmanName ? _self.bitmanName : bitmanName // ignore: cast_nullable_to_non_nullable
as String,removedAd: null == removedAd ? _self.removedAd : removedAd // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Setting].
extension SettingPatterns on Setting {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Setting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Setting value)  $default,){
final _that = this;
switch (_that) {
case _Setting():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Setting value)?  $default,){
final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSound,  bool isBGM,  bool isHapticFeedback,  bool isFixedJoystick,  bool isLeftJoystick,  bool reviewRequested,  BitmanWeapon selectedWeapon,  BitmanHelmet selectedHelmet,  BitmanColor color,  String bitmanName,  bool removedAd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that.isSound,_that.isBGM,_that.isHapticFeedback,_that.isFixedJoystick,_that.isLeftJoystick,_that.reviewRequested,_that.selectedWeapon,_that.selectedHelmet,_that.color,_that.bitmanName,_that.removedAd);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSound,  bool isBGM,  bool isHapticFeedback,  bool isFixedJoystick,  bool isLeftJoystick,  bool reviewRequested,  BitmanWeapon selectedWeapon,  BitmanHelmet selectedHelmet,  BitmanColor color,  String bitmanName,  bool removedAd)  $default,) {final _that = this;
switch (_that) {
case _Setting():
return $default(_that.isSound,_that.isBGM,_that.isHapticFeedback,_that.isFixedJoystick,_that.isLeftJoystick,_that.reviewRequested,_that.selectedWeapon,_that.selectedHelmet,_that.color,_that.bitmanName,_that.removedAd);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSound,  bool isBGM,  bool isHapticFeedback,  bool isFixedJoystick,  bool isLeftJoystick,  bool reviewRequested,  BitmanWeapon selectedWeapon,  BitmanHelmet selectedHelmet,  BitmanColor color,  String bitmanName,  bool removedAd)?  $default,) {final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that.isSound,_that.isBGM,_that.isHapticFeedback,_that.isFixedJoystick,_that.isLeftJoystick,_that.reviewRequested,_that.selectedWeapon,_that.selectedHelmet,_that.color,_that.bitmanName,_that.removedAd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Setting with DiagnosticableTreeMixin implements Setting {
  const _Setting({required this.isSound, required this.isBGM, required this.isHapticFeedback, required this.isFixedJoystick, required this.isLeftJoystick, required this.reviewRequested, required this.selectedWeapon, required this.selectedHelmet, required this.color, required this.bitmanName, required this.removedAd});
  factory _Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);

// environment,ui setting
@override final  bool isSound;
@override final  bool isBGM;
@override final  bool isHapticFeedback;
@override final  bool isFixedJoystick;
@override final  bool isLeftJoystick;
@override final  bool reviewRequested;
// bitman setting
@override final  BitmanWeapon selectedWeapon;
@override final  BitmanHelmet selectedHelmet;
@override final  BitmanColor color;
@override final  String bitmanName;
// iap setting
@override final  bool removedAd;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingCopyWith<_Setting> get copyWith => __$SettingCopyWithImpl<_Setting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Setting'))
    ..add(DiagnosticsProperty('isSound', isSound))..add(DiagnosticsProperty('isBGM', isBGM))..add(DiagnosticsProperty('isHapticFeedback', isHapticFeedback))..add(DiagnosticsProperty('isFixedJoystick', isFixedJoystick))..add(DiagnosticsProperty('isLeftJoystick', isLeftJoystick))..add(DiagnosticsProperty('reviewRequested', reviewRequested))..add(DiagnosticsProperty('selectedWeapon', selectedWeapon))..add(DiagnosticsProperty('selectedHelmet', selectedHelmet))..add(DiagnosticsProperty('color', color))..add(DiagnosticsProperty('bitmanName', bitmanName))..add(DiagnosticsProperty('removedAd', removedAd));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Setting&&(identical(other.isSound, isSound) || other.isSound == isSound)&&(identical(other.isBGM, isBGM) || other.isBGM == isBGM)&&(identical(other.isHapticFeedback, isHapticFeedback) || other.isHapticFeedback == isHapticFeedback)&&(identical(other.isFixedJoystick, isFixedJoystick) || other.isFixedJoystick == isFixedJoystick)&&(identical(other.isLeftJoystick, isLeftJoystick) || other.isLeftJoystick == isLeftJoystick)&&(identical(other.reviewRequested, reviewRequested) || other.reviewRequested == reviewRequested)&&(identical(other.selectedWeapon, selectedWeapon) || other.selectedWeapon == selectedWeapon)&&(identical(other.selectedHelmet, selectedHelmet) || other.selectedHelmet == selectedHelmet)&&(identical(other.color, color) || other.color == color)&&(identical(other.bitmanName, bitmanName) || other.bitmanName == bitmanName)&&(identical(other.removedAd, removedAd) || other.removedAd == removedAd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSound,isBGM,isHapticFeedback,isFixedJoystick,isLeftJoystick,reviewRequested,selectedWeapon,selectedHelmet,color,bitmanName,removedAd);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Setting(isSound: $isSound, isBGM: $isBGM, isHapticFeedback: $isHapticFeedback, isFixedJoystick: $isFixedJoystick, isLeftJoystick: $isLeftJoystick, reviewRequested: $reviewRequested, selectedWeapon: $selectedWeapon, selectedHelmet: $selectedHelmet, color: $color, bitmanName: $bitmanName, removedAd: $removedAd)';
}


}

/// @nodoc
abstract mixin class _$SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$SettingCopyWith(_Setting value, $Res Function(_Setting) _then) = __$SettingCopyWithImpl;
@override @useResult
$Res call({
 bool isSound, bool isBGM, bool isHapticFeedback, bool isFixedJoystick, bool isLeftJoystick, bool reviewRequested, BitmanWeapon selectedWeapon, BitmanHelmet selectedHelmet, BitmanColor color, String bitmanName, bool removedAd
});




}
/// @nodoc
class __$SettingCopyWithImpl<$Res>
    implements _$SettingCopyWith<$Res> {
  __$SettingCopyWithImpl(this._self, this._then);

  final _Setting _self;
  final $Res Function(_Setting) _then;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSound = null,Object? isBGM = null,Object? isHapticFeedback = null,Object? isFixedJoystick = null,Object? isLeftJoystick = null,Object? reviewRequested = null,Object? selectedWeapon = null,Object? selectedHelmet = null,Object? color = null,Object? bitmanName = null,Object? removedAd = null,}) {
  return _then(_Setting(
isSound: null == isSound ? _self.isSound : isSound // ignore: cast_nullable_to_non_nullable
as bool,isBGM: null == isBGM ? _self.isBGM : isBGM // ignore: cast_nullable_to_non_nullable
as bool,isHapticFeedback: null == isHapticFeedback ? _self.isHapticFeedback : isHapticFeedback // ignore: cast_nullable_to_non_nullable
as bool,isFixedJoystick: null == isFixedJoystick ? _self.isFixedJoystick : isFixedJoystick // ignore: cast_nullable_to_non_nullable
as bool,isLeftJoystick: null == isLeftJoystick ? _self.isLeftJoystick : isLeftJoystick // ignore: cast_nullable_to_non_nullable
as bool,reviewRequested: null == reviewRequested ? _self.reviewRequested : reviewRequested // ignore: cast_nullable_to_non_nullable
as bool,selectedWeapon: null == selectedWeapon ? _self.selectedWeapon : selectedWeapon // ignore: cast_nullable_to_non_nullable
as BitmanWeapon,selectedHelmet: null == selectedHelmet ? _self.selectedHelmet : selectedHelmet // ignore: cast_nullable_to_non_nullable
as BitmanHelmet,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as BitmanColor,bitmanName: null == bitmanName ? _self.bitmanName : bitmanName // ignore: cast_nullable_to_non_nullable
as String,removedAd: null == removedAd ? _self.removedAd : removedAd // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
