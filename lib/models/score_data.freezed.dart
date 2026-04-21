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
  int get maxStreak => throw _privateConstructorUsedError;

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
  $Res call({List<int> bestScore, int maxStreak});
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
    Object? maxStreak = null,
  }) {
    return _then(_value.copyWith(
      bestScore: null == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      maxStreak: null == maxStreak
          ? _value.maxStreak
          : maxStreak // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<int> bestScore, int maxStreak});
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
    Object? maxStreak = null,
  }) {
    return _then(_$ScoreDataImpl(
      bestScore: null == bestScore
          ? _value._bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      maxStreak: null == maxStreak
          ? _value.maxStreak
          : maxStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ScoreDataImpl with DiagnosticableTreeMixin implements _ScoreData {
  const _$ScoreDataImpl(
      {required final List<int> bestScore, required this.maxStreak})
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
  final int maxStreak;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScoreData(bestScore: $bestScore, maxStreak: $maxStreak)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScoreData'))
      ..add(DiagnosticsProperty('bestScore', bestScore))
      ..add(DiagnosticsProperty('maxStreak', maxStreak));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreDataImpl &&
            const DeepCollectionEquality()
                .equals(other._bestScore, _bestScore) &&
            (identical(other.maxStreak, maxStreak) ||
                other.maxStreak == maxStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bestScore), maxStreak);

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
      required final int maxStreak}) = _$ScoreDataImpl;

  factory _ScoreData.fromJson(Map<String, dynamic> json) =
      _$ScoreDataImpl.fromJson;

  @override
  List<int> get bestScore;
  @override
  int get maxStreak;
  @override
  @JsonKey(ignore: true)
  _$$ScoreDataImplCopyWith<_$ScoreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
