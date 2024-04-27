// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreDataImpl _$$ScoreDataImplFromJson(Map<String, dynamic> json) =>
    _$ScoreDataImpl(
      bestScore: (json['bestScore'] as num).toInt(),
      numbersToSolveAddition: (json['numbersToSolveAddition'] as num).toInt(),
      numbersToSolveSubstraction:
          (json['numbersToSolveSubstraction'] as num).toInt(),
      numbersToSolveMultipulation:
          (json['numbersToSolveMultipulation'] as num).toInt(),
      numbersToSolveDivision: (json['numbersToSolveDivision'] as num).toInt(),
    );

Map<String, dynamic> _$$ScoreDataImplToJson(_$ScoreDataImpl instance) =>
    <String, dynamic>{
      'bestScore': instance.bestScore,
      'numbersToSolveAddition': instance.numbersToSolveAddition,
      'numbersToSolveSubstraction': instance.numbersToSolveSubstraction,
      'numbersToSolveMultipulation': instance.numbersToSolveMultipulation,
      'numbersToSolveDivision': instance.numbersToSolveDivision,
    };
