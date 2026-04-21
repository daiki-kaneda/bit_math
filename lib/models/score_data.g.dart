// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScoreData _$ScoreDataFromJson(Map<String, dynamic> json) => _ScoreData(
  bestScore: (json['bestScore'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  maxStreak: (json['maxStreak'] as num).toInt(),
);

Map<String, dynamic> _$ScoreDataToJson(_ScoreData instance) =>
    <String, dynamic>{
      'bestScore': instance.bestScore,
      'maxStreak': instance.maxStreak,
    };
