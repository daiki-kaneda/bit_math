// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Setting _$SettingFromJson(Map<String, dynamic> json) => _Setting(
  isSound: json['isSound'] as bool,
  isBGM: json['isBGM'] as bool,
  isHapticFeedback: json['isHapticFeedback'] as bool,
  isFixedJoystick: json['isFixedJoystick'] as bool,
  isLeftJoystick: json['isLeftJoystick'] as bool,
  reviewRequested: json['reviewRequested'] as bool,
  selectedWeapon: $enumDecode(_$BitmanWeaponEnumMap, json['selectedWeapon']),
  selectedHelmet: $enumDecode(_$BitmanHelmetEnumMap, json['selectedHelmet']),
  color: $enumDecode(_$BitmanColorEnumMap, json['color']),
  bitmanName: json['bitmanName'] as String,
  removedAd: json['removedAd'] as bool,
);

Map<String, dynamic> _$SettingToJson(_Setting instance) => <String, dynamic>{
  'isSound': instance.isSound,
  'isBGM': instance.isBGM,
  'isHapticFeedback': instance.isHapticFeedback,
  'isFixedJoystick': instance.isFixedJoystick,
  'isLeftJoystick': instance.isLeftJoystick,
  'reviewRequested': instance.reviewRequested,
  'selectedWeapon': _$BitmanWeaponEnumMap[instance.selectedWeapon]!,
  'selectedHelmet': _$BitmanHelmetEnumMap[instance.selectedHelmet]!,
  'color': _$BitmanColorEnumMap[instance.color]!,
  'bitmanName': instance.bitmanName,
  'removedAd': instance.removedAd,
};

const _$BitmanWeaponEnumMap = {
  BitmanWeapon.none: 'none',
  BitmanWeapon.shovel: 'shovel',
  BitmanWeapon.pick: 'pick',
  BitmanWeapon.sword: 'sword',
  BitmanWeapon.gun: 'gun',
  BitmanWeapon.arrow: 'arrow',
  BitmanWeapon.bomb: 'bomb',
  BitmanWeapon.dynamite: 'dynamite',
};

const _$BitmanHelmetEnumMap = {
  BitmanHelmet.none: 'none',
  BitmanHelmet.strawHat: 'strawHat',
  BitmanHelmet.cape: 'cape',
  BitmanHelmet.hardHat: 'hardHat',
  BitmanHelmet.helmet: 'helmet',
  BitmanHelmet.armor: 'armor',
  BitmanHelmet.ring: 'ring',
};

const _$BitmanColorEnumMap = {
  BitmanColor.normalBlue: 'normalBlue',
  BitmanColor.speedYellow: 'speedYellow',
  BitmanColor.floatGreen: 'floatGreen',
};
