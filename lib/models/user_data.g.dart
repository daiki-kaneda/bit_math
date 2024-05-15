// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      deviceId: json['deviceId'] as String?,
      name: json['name'] as String,
      bestScore: (json['bestScore'] as num).toInt(),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deviceId', instance.deviceId);
  val['name'] = instance.name;
  val['bestScore'] = instance.bestScore;
  return val;
}
