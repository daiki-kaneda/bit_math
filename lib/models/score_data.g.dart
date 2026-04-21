// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreDataImpl _$$ScoreDataImplFromJson(Map<String, dynamic> json) =>
    _$ScoreDataImpl(
      bestScore: (json['bestScore'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      maxStreak: (json['maxStreak'] as num).toInt(),
    );

Map<String, dynamic> _$$ScoreDataImplToJson(_$ScoreDataImpl instance) =>
    <String, dynamic>{
      'bestScore': instance.bestScore,
      'maxStreak': instance.maxStreak,
    };
