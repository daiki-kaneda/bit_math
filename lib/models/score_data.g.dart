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
      numSolveAdd: (json['numSolveAdd'] as num).toInt(),
      numSolveSub: (json['numSolveSub'] as num).toInt(),
      numSolveMul: (json['numSolveMul'] as num).toInt(),
      numSolveDiv: (json['numSolveDiv'] as num).toInt(),
    );

Map<String, dynamic> _$$ScoreDataImplToJson(_$ScoreDataImpl instance) =>
    <String, dynamic>{
      'bestScore': instance.bestScore,
      'numSolveAdd': instance.numSolveAdd,
      'numSolveSub': instance.numSolveSub,
      'numSolveMul': instance.numSolveMul,
      'numSolveDiv': instance.numSolveDiv,
    };
