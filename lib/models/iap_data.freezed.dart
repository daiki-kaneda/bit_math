// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iap_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IAPData _$IAPDataFromJson(Map<String, dynamic> json) {
  return _IAPData.fromJson(json);
}

/// @nodoc
mixin _$IAPData {
  bool? get isRemovedAd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IAPDataCopyWith<IAPData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IAPDataCopyWith<$Res> {
  factory $IAPDataCopyWith(IAPData value, $Res Function(IAPData) then) =
      _$IAPDataCopyWithImpl<$Res, IAPData>;
  @useResult
  $Res call({bool? isRemovedAd});
}

/// @nodoc
class _$IAPDataCopyWithImpl<$Res, $Val extends IAPData>
    implements $IAPDataCopyWith<$Res> {
  _$IAPDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemovedAd = freezed,
  }) {
    return _then(_value.copyWith(
      isRemovedAd: freezed == isRemovedAd
          ? _value.isRemovedAd
          : isRemovedAd // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IAPDataImplCopyWith<$Res> implements $IAPDataCopyWith<$Res> {
  factory _$$IAPDataImplCopyWith(
          _$IAPDataImpl value, $Res Function(_$IAPDataImpl) then) =
      __$$IAPDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isRemovedAd});
}

/// @nodoc
class __$$IAPDataImplCopyWithImpl<$Res>
    extends _$IAPDataCopyWithImpl<$Res, _$IAPDataImpl>
    implements _$$IAPDataImplCopyWith<$Res> {
  __$$IAPDataImplCopyWithImpl(
      _$IAPDataImpl _value, $Res Function(_$IAPDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemovedAd = freezed,
  }) {
    return _then(_$IAPDataImpl(
      isRemovedAd: freezed == isRemovedAd
          ? _value.isRemovedAd
          : isRemovedAd // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$IAPDataImpl with DiagnosticableTreeMixin implements _IAPData {
  const _$IAPDataImpl({required this.isRemovedAd});

  factory _$IAPDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IAPDataImplFromJson(json);

  @override
  final bool? isRemovedAd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IAPData(isRemovedAd: $isRemovedAd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IAPData'))
      ..add(DiagnosticsProperty('isRemovedAd', isRemovedAd));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IAPDataImpl &&
            (identical(other.isRemovedAd, isRemovedAd) ||
                other.isRemovedAd == isRemovedAd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRemovedAd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IAPDataImplCopyWith<_$IAPDataImpl> get copyWith =>
      __$$IAPDataImplCopyWithImpl<_$IAPDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IAPDataImplToJson(
      this,
    );
  }
}

abstract class _IAPData implements IAPData {
  const factory _IAPData({required final bool? isRemovedAd}) = _$IAPDataImpl;

  factory _IAPData.fromJson(Map<String, dynamic> json) = _$IAPDataImpl.fromJson;

  @override
  bool? get isRemovedAd;
  @override
  @JsonKey(ignore: true)
  _$$IAPDataImplCopyWith<_$IAPDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
