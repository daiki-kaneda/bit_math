// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iap_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IAPDataImpl _$$IAPDataImplFromJson(Map<String, dynamic> json) =>
    _$IAPDataImpl(
      isRemovedAd: json['isRemovedAd'] as bool?,
    );

Map<String, dynamic> _$$IAPDataImplToJson(_$IAPDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isRemovedAd', instance.isRemovedAd);
  return val;
}
