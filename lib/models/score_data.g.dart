// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreDataImpl _$$ScoreDataImplFromJson(Map<String, dynamic> json) =>
    _$ScoreDataImpl(
      bestScore: json['bestScore'] as int,
      numbersToSolveAddition: json['numbersToSolveAddition'] as int,
      numbersToSolveSubstraction: json['numbersToSolveSubstraction'] as int,
      numbersToSolveMultipulation: json['numbersToSolveMultipulation'] as int,
      numbersToSolveDivision: json['numbersToSolveDivision'] as int,
    );

Map<String, dynamic> _$$ScoreDataImplToJson(_$ScoreDataImpl instance) =>
    <String, dynamic>{
      'bestScore': instance.bestScore,
      'numbersToSolveAddition': instance.numbersToSolveAddition,
      'numbersToSolveSubstraction': instance.numbersToSolveSubstraction,
      'numbersToSolveMultipulation': instance.numbersToSolveMultipulation,
      'numbersToSolveDivision': instance.numbersToSolveDivision,
    };
