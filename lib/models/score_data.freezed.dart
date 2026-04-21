// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoreData implements DiagnosticableTreeMixin {

 List<int> get bestScore; int get maxStreak;
/// Create a copy of ScoreData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoreDataCopyWith<ScoreData> get copyWith => _$ScoreDataCopyWithImpl<ScoreData>(this as ScoreData, _$identity);

  /// Serializes this ScoreData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScoreData'))
    ..add(DiagnosticsProperty('bestScore', bestScore))..add(DiagnosticsProperty('maxStreak', maxStreak));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoreData&&const DeepCollectionEquality().equals(other.bestScore, bestScore)&&(identical(other.maxStreak, maxStreak) || other.maxStreak == maxStreak));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bestScore),maxStreak);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScoreData(bestScore: $bestScore, maxStreak: $maxStreak)';
}


}

/// @nodoc
abstract mixin class $ScoreDataCopyWith<$Res>  {
  factory $ScoreDataCopyWith(ScoreData value, $Res Function(ScoreData) _then) = _$ScoreDataCopyWithImpl;
@useResult
$Res call({
 List<int> bestScore, int maxStreak
});




}
/// @nodoc
class _$ScoreDataCopyWithImpl<$Res>
    implements $ScoreDataCopyWith<$Res> {
  _$ScoreDataCopyWithImpl(this._self, this._then);

  final ScoreData _self;
  final $Res Function(ScoreData) _then;

/// Create a copy of ScoreData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bestScore = null,Object? maxStreak = null,}) {
  return _then(_self.copyWith(
bestScore: null == bestScore ? _self.bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as List<int>,maxStreak: null == maxStreak ? _self.maxStreak : maxStreak // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoreData].
extension ScoreDataPatterns on ScoreData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoreData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoreData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoreData value)  $default,){
final _that = this;
switch (_that) {
case _ScoreData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoreData value)?  $default,){
final _that = this;
switch (_that) {
case _ScoreData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> bestScore,  int maxStreak)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoreData() when $default != null:
return $default(_that.bestScore,_that.maxStreak);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> bestScore,  int maxStreak)  $default,) {final _that = this;
switch (_that) {
case _ScoreData():
return $default(_that.bestScore,_that.maxStreak);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> bestScore,  int maxStreak)?  $default,) {final _that = this;
switch (_that) {
case _ScoreData() when $default != null:
return $default(_that.bestScore,_that.maxStreak);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ScoreData with DiagnosticableTreeMixin implements ScoreData {
  const _ScoreData({required final  List<int> bestScore, required this.maxStreak}): _bestScore = bestScore;
  factory _ScoreData.fromJson(Map<String, dynamic> json) => _$ScoreDataFromJson(json);

 final  List<int> _bestScore;
@override List<int> get bestScore {
  if (_bestScore is EqualUnmodifiableListView) return _bestScore;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bestScore);
}

@override final  int maxStreak;

/// Create a copy of ScoreData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoreDataCopyWith<_ScoreData> get copyWith => __$ScoreDataCopyWithImpl<_ScoreData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoreDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ScoreData'))
    ..add(DiagnosticsProperty('bestScore', bestScore))..add(DiagnosticsProperty('maxStreak', maxStreak));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoreData&&const DeepCollectionEquality().equals(other._bestScore, _bestScore)&&(identical(other.maxStreak, maxStreak) || other.maxStreak == maxStreak));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bestScore),maxStreak);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ScoreData(bestScore: $bestScore, maxStreak: $maxStreak)';
}


}

/// @nodoc
abstract mixin class _$ScoreDataCopyWith<$Res> implements $ScoreDataCopyWith<$Res> {
  factory _$ScoreDataCopyWith(_ScoreData value, $Res Function(_ScoreData) _then) = __$ScoreDataCopyWithImpl;
@override @useResult
$Res call({
 List<int> bestScore, int maxStreak
});




}
/// @nodoc
class __$ScoreDataCopyWithImpl<$Res>
    implements _$ScoreDataCopyWith<$Res> {
  __$ScoreDataCopyWithImpl(this._self, this._then);

  final _ScoreData _self;
  final $Res Function(_ScoreData) _then;

/// Create a copy of ScoreData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bestScore = null,Object? maxStreak = null,}) {
  return _then(_ScoreData(
bestScore: null == bestScore ? _self._bestScore : bestScore // ignore: cast_nullable_to_non_nullable
as List<int>,maxStreak: null == maxStreak ? _self.maxStreak : maxStreak // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
