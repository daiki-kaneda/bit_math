// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoreData _$ScoreDataFromJson(Map<String, dynamic> json) {
  return _ScoreData.fromJson(json);
}

/// @nodoc
mixin _$ScoreData {
  List<int> get bestScore => throw _privateConstructorUsedError;
  int get numSolveAdd => throw _privateConstructorUsedError;
  int get numSolveSub => throw _privateConstructorUsedError;
  int get numSolveMul => throw _privateConstructorUsedError;
  int get numSolveDiv => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreDataCopyWith<ScoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreDataCopyWith<$Res> {
  factory $ScoreDataCopyWith(ScoreData value, $Res Function(ScoreData) then) =
      _$ScoreDataCopyWithImpl<$Res, ScoreData>;
  @useResult
  $Res call(
      {List<int> bestScore,
      int numSolveAdd,
      int numSolveSub,
      int numSolveMul,
      int numSolveDiv});
}

/// @nodoc
class _$ScoreDataCopyWithImpl<$Res, $Val extends ScoreData>
    implements $ScoreDataCopyWith<$Res> {
  _$ScoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestScore = null,
    Object? numSolveAdd = null,
    Object? numSolveSub = null,
    Object? numSolveMul = null,
    Object? numSolveDiv = null,
  }) {
    return _then(_value.copyWith(
      bestScore: null == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numSolveAdd: null == numSolveAdd
          ? _value.numSolveAdd
          : numSolveAdd // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveSub: null == numSolveSub
          ? _value.numSolveSub
          : numSolveSub // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveMul: null == numSolveMul
          ? _value.numSolveMul
          : numSolveMul // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveDiv: null == numSolveDiv
          ? _value.numSolveDiv
          : numSolveDiv // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreDataImplCopyWith<$Res>
    implements $ScoreDataCopyWith<$Res> {
  factory _$$ScoreDataImplCopyWith(
          _$ScoreDataImpl value, $Res Function(_$ScoreDataImpl) then) =
      __$$ScoreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> bestScore,
      int numSolveAdd,
      int numSolveSub,
      int numSolveMul,
      int numSolveDiv});
}

/// @nodoc
class __$$ScoreDataImplCopyWithImpl<$Res>
    extends _$ScoreDataCopyWithImpl<$Res, _$ScoreDataImpl>
    implements _$$ScoreDataImplCopyWith<$Res> {
  __$$ScoreDataImplCopyWithImpl(
      _$ScoreDataImpl _value, $Res Function(_$ScoreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestScore = null,
    Object? numSolveAdd = null,
    Object? numSolveSub = null,
    Object? numSolveMul = null,
    Object? numSolveDiv = null,
  }) {
    return _then(_$ScoreDataImpl(
      bestScore: null == bestScore
          ? _value._bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numSolveAdd: null == numSolveAdd
          ? _value.numSolveAdd
          : numSolveAdd // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveSub: null == numSolveSub
          ? _value.numSolveSub
          : numSolveSub // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveMul: null == numSolveMul
          ? _value.numSolveMul
          : numSolveMul // ignore: cast_nullable_to_non_nullable
              as int,
      numSolveDiv: null == numSolveDiv
          ? _value.numSolveDiv
          : numSolveDiv // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ScoreDataImpl with DiagnosticableTreeMixin implements _ScoreData {
  const _$ScoreDataImpl(
      {required final List<int> bestScore,
      required this.numSolveAdd,
      required this.numSolveSub,
      required this.numSolveMul,
      required this.numSolveDiv})
      : _bestScore = bestScore;

  factory _$ScoreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreDataImplFromJson(json);

  final List<int> _bestScore;
  @override
  List<int> get bestScore {
    if (_bestScore is EqualUnmodifiableListView) return _bestScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestScore);
  }

  @override
  final int numSolveAdd;
  @override
  final int numSolveSub;
  @override
  final int numSolveMul;
  @override
  final int numSolveDiv;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScoreData(bestScore: $bestScore, numSolveAdd: $numSolveAdd, numSolveSub: $numSolveSub, numSolveMul: $numSolveMul, numSolveDiv: $numSolveDiv)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScoreData'))
      ..add(DiagnosticsProperty('bestScore', bestScore))
      ..add(DiagnosticsProperty('numSolveAdd', numSolveAdd))
      ..add(DiagnosticsProperty('numSolveSub', numSolveSub))
      ..add(DiagnosticsProperty('numSolveMul', numSolveMul))
      ..add(DiagnosticsProperty('numSolveDiv', numSolveDiv));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreDataImpl &&
            const DeepCollectionEquality()
                .equals(other._bestScore, _bestScore) &&
            (identical(other.numSolveAdd, numSolveAdd) ||
                other.numSolveAdd == numSolveAdd) &&
            (identical(other.numSolveSub, numSolveSub) ||
                other.numSolveSub == numSolveSub) &&
            (identical(other.numSolveMul, numSolveMul) ||
                other.numSolveMul == numSolveMul) &&
            (identical(other.numSolveDiv, numSolveDiv) ||
                other.numSolveDiv == numSolveDiv));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bestScore),
      numSolveAdd,
      numSolveSub,
      numSolveMul,
      numSolveDiv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreDataImplCopyWith<_$ScoreDataImpl> get copyWith =>
      __$$ScoreDataImplCopyWithImpl<_$ScoreDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreDataImplToJson(
      this,
    );
  }
}

abstract class _ScoreData implements ScoreData {
  const factory _ScoreData(
      {required final List<int> bestScore,
      required final int numSolveAdd,
      required final int numSolveSub,
      required final int numSolveMul,
      required final int numSolveDiv}) = _$ScoreDataImpl;

  factory _ScoreData.fromJson(Map<String, dynamic> json) =
      _$ScoreDataImpl.fromJson;

  @override
  List<int> get bestScore;
  @override
  int get numSolveAdd;
  @override
  int get numSolveSub;
  @override
  int get numSolveMul;
  @override
  int get numSolveDiv;
  @override
  @JsonKey(ignore: true)
  _$$ScoreDataImplCopyWith<_$ScoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
