// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingImpl _$$SettingImplFromJson(Map<String, dynamic> json) =>
    _$SettingImpl(
      isSound: json['isSound'] as bool,
      isBGM: json['isBGM'] as bool,
      isHapticFeedback: json['isHapticFeedback'] as bool,
      isFixedJoystick: json['isFixedJoystick'] as bool,
      isLeftJoystick: json['isLeftJoystick'] as bool,
      selectedWeapon:
          $enumDecode(_$BitmanWeaponEnumMap, json['selectedWeapon']),
      selectedHelmet:
          $enumDecode(_$BitmanHelmetEnumMap, json['selectedHelmet']),
      color: $enumDecode(_$BitmanColorEnumMap, json['color']),
      bitmanName: json['bitmanName'] as String,
    );

Map<String, dynamic> _$$SettingImplToJson(_$SettingImpl instance) =>
    <String, dynamic>{
      'isSound': instance.isSound,
      'isBGM': instance.isBGM,
      'isHapticFeedback': instance.isHapticFeedback,
      'isFixedJoystick': instance.isFixedJoystick,
      'isLeftJoystick': instance.isLeftJoystick,
      'selectedWeapon': _$BitmanWeaponEnumMap[instance.selectedWeapon]!,
      'selectedHelmet': _$BitmanHelmetEnumMap[instance.selectedHelmet]!,
      'color': _$BitmanColorEnumMap[instance.color]!,
      'bitmanName': instance.bitmanName,
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
  BitmanHelmet.hardHat: 'hardHat',
  BitmanHelmet.helmet: 'helmet',
  BitmanHelmet.armor: 'armor',
};

const _$BitmanColorEnumMap = {
  BitmanColor.normalBlue: 'normalBlue',
  BitmanColor.speedYellow: 'speedYellow',
  BitmanColor.floatGreen: 'floatGreen',
};
