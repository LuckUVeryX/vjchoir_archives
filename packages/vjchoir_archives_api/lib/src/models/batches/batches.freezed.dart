// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'batches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Batches _$BatchesFromJson(Map<String, dynamic> json) {
  return _Batches.fromJson(json);
}

/// @nodoc
mixin _$Batches {
  List<Batch> get batches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatchesCopyWith<Batches> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchesCopyWith<$Res> {
  factory $BatchesCopyWith(Batches value, $Res Function(Batches) then) =
      _$BatchesCopyWithImpl<$Res>;
  $Res call({List<Batch> batches});
}

/// @nodoc
class _$BatchesCopyWithImpl<$Res> implements $BatchesCopyWith<$Res> {
  _$BatchesCopyWithImpl(this._value, this._then);

  final Batches _value;
  // ignore: unused_field
  final $Res Function(Batches) _then;

  @override
  $Res call({
    Object? batches = freezed,
  }) {
    return _then(_value.copyWith(
      batches: batches == freezed
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as List<Batch>,
    ));
  }
}

/// @nodoc
abstract class _$$_BatchesCopyWith<$Res> implements $BatchesCopyWith<$Res> {
  factory _$$_BatchesCopyWith(
          _$_Batches value, $Res Function(_$_Batches) then) =
      __$$_BatchesCopyWithImpl<$Res>;
  @override
  $Res call({List<Batch> batches});
}

/// @nodoc
class __$$_BatchesCopyWithImpl<$Res> extends _$BatchesCopyWithImpl<$Res>
    implements _$$_BatchesCopyWith<$Res> {
  __$$_BatchesCopyWithImpl(_$_Batches _value, $Res Function(_$_Batches) _then)
      : super(_value, (v) => _then(v as _$_Batches));

  @override
  _$_Batches get _value => super._value as _$_Batches;

  @override
  $Res call({
    Object? batches = freezed,
  }) {
    return _then(_$_Batches(
      batches: batches == freezed
          ? _value._batches
          : batches // ignore: cast_nullable_to_non_nullable
              as List<Batch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Batches implements _Batches {
  _$_Batches({required final List<Batch> batches}) : _batches = batches;

  factory _$_Batches.fromJson(Map<String, dynamic> json) =>
      _$$_BatchesFromJson(json);

  final List<Batch> _batches;
  @override
  List<Batch> get batches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_batches);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Batches &&
            const DeepCollectionEquality().equals(other._batches, _batches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_batches));

  @JsonKey(ignore: true)
  @override
  _$$_BatchesCopyWith<_$_Batches> get copyWith =>
      __$$_BatchesCopyWithImpl<_$_Batches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatchesToJson(
      this,
    );
  }
}

abstract class _Batches implements Batches {
  factory _Batches({required final List<Batch> batches}) = _$_Batches;

  factory _Batches.fromJson(Map<String, dynamic> json) = _$_Batches.fromJson;

  @override
  List<Batch> get batches;
  @override
  @JsonKey(ignore: true)
  _$$_BatchesCopyWith<_$_Batches> get copyWith =>
      throw _privateConstructorUsedError;
}
