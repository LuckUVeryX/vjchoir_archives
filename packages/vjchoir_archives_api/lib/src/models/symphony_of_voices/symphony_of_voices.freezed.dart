// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symphony_of_voices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymphonyOfVoices _$SymphonyOfVoicesFromJson(Map<String, dynamic> json) {
  return _SymphonyOfVoices.fromJson(json);
}

/// @nodoc
mixin _$SymphonyOfVoices {
  List<Sov> get sov => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymphonyOfVoicesCopyWith<SymphonyOfVoices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymphonyOfVoicesCopyWith<$Res> {
  factory $SymphonyOfVoicesCopyWith(
          SymphonyOfVoices value, $Res Function(SymphonyOfVoices) then) =
      _$SymphonyOfVoicesCopyWithImpl<$Res>;
  $Res call({List<Sov> sov});
}

/// @nodoc
class _$SymphonyOfVoicesCopyWithImpl<$Res>
    implements $SymphonyOfVoicesCopyWith<$Res> {
  _$SymphonyOfVoicesCopyWithImpl(this._value, this._then);

  final SymphonyOfVoices _value;
  // ignore: unused_field
  final $Res Function(SymphonyOfVoices) _then;

  @override
  $Res call({
    Object? sov = freezed,
  }) {
    return _then(_value.copyWith(
      sov: sov == freezed
          ? _value.sov
          : sov // ignore: cast_nullable_to_non_nullable
              as List<Sov>,
    ));
  }
}

/// @nodoc
abstract class _$$_SymphonyOfVoicesCopyWith<$Res>
    implements $SymphonyOfVoicesCopyWith<$Res> {
  factory _$$_SymphonyOfVoicesCopyWith(
          _$_SymphonyOfVoices value, $Res Function(_$_SymphonyOfVoices) then) =
      __$$_SymphonyOfVoicesCopyWithImpl<$Res>;
  @override
  $Res call({List<Sov> sov});
}

/// @nodoc
class __$$_SymphonyOfVoicesCopyWithImpl<$Res>
    extends _$SymphonyOfVoicesCopyWithImpl<$Res>
    implements _$$_SymphonyOfVoicesCopyWith<$Res> {
  __$$_SymphonyOfVoicesCopyWithImpl(
      _$_SymphonyOfVoices _value, $Res Function(_$_SymphonyOfVoices) _then)
      : super(_value, (v) => _then(v as _$_SymphonyOfVoices));

  @override
  _$_SymphonyOfVoices get _value => super._value as _$_SymphonyOfVoices;

  @override
  $Res call({
    Object? sov = freezed,
  }) {
    return _then(_$_SymphonyOfVoices(
      sov: sov == freezed
          ? _value._sov
          : sov // ignore: cast_nullable_to_non_nullable
              as List<Sov>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SymphonyOfVoices implements _SymphonyOfVoices {
  _$_SymphonyOfVoices({required final List<Sov> sov}) : _sov = sov;

  factory _$_SymphonyOfVoices.fromJson(Map<String, dynamic> json) =>
      _$$_SymphonyOfVoicesFromJson(json);

  final List<Sov> _sov;
  @override
  List<Sov> get sov {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sov);
  }

  @override
  String toString() {
    return 'SymphonyOfVoices(sov: $sov)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SymphonyOfVoices &&
            const DeepCollectionEquality().equals(other._sov, _sov));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sov));

  @JsonKey(ignore: true)
  @override
  _$$_SymphonyOfVoicesCopyWith<_$_SymphonyOfVoices> get copyWith =>
      __$$_SymphonyOfVoicesCopyWithImpl<_$_SymphonyOfVoices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymphonyOfVoicesToJson(
      this,
    );
  }
}

abstract class _SymphonyOfVoices implements SymphonyOfVoices {
  factory _SymphonyOfVoices({required final List<Sov> sov}) =
      _$_SymphonyOfVoices;

  factory _SymphonyOfVoices.fromJson(Map<String, dynamic> json) =
      _$_SymphonyOfVoices.fromJson;

  @override
  List<Sov> get sov;
  @override
  @JsonKey(ignore: true)
  _$$_SymphonyOfVoicesCopyWith<_$_SymphonyOfVoices> get copyWith =>
      throw _privateConstructorUsedError;
}
