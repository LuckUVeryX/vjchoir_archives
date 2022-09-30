// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repertoire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repertoire _$RepertoireFromJson(Map<String, dynamic> json) {
  return _Repertoire.fromJson(json);
}

/// @nodoc
mixin _$Repertoire {
  String get name => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get mp3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepertoireCopyWith<Repertoire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepertoireCopyWith<$Res> {
  factory $RepertoireCopyWith(
          Repertoire value, $Res Function(Repertoire) then) =
      _$RepertoireCopyWithImpl<$Res>;
  $Res call({String name, String composer, int duration, String mp3});
}

/// @nodoc
class _$RepertoireCopyWithImpl<$Res> implements $RepertoireCopyWith<$Res> {
  _$RepertoireCopyWithImpl(this._value, this._then);

  final Repertoire _value;
  // ignore: unused_field
  final $Res Function(Repertoire) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? composer = freezed,
    Object? duration = freezed,
    Object? mp3 = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      mp3: mp3 == freezed
          ? _value.mp3
          : mp3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RepertoireCopyWith<$Res>
    implements $RepertoireCopyWith<$Res> {
  factory _$$_RepertoireCopyWith(
          _$_Repertoire value, $Res Function(_$_Repertoire) then) =
      __$$_RepertoireCopyWithImpl<$Res>;
  @override
  $Res call({String name, String composer, int duration, String mp3});
}

/// @nodoc
class __$$_RepertoireCopyWithImpl<$Res> extends _$RepertoireCopyWithImpl<$Res>
    implements _$$_RepertoireCopyWith<$Res> {
  __$$_RepertoireCopyWithImpl(
      _$_Repertoire _value, $Res Function(_$_Repertoire) _then)
      : super(_value, (v) => _then(v as _$_Repertoire));

  @override
  _$_Repertoire get _value => super._value as _$_Repertoire;

  @override
  $Res call({
    Object? name = freezed,
    Object? composer = freezed,
    Object? duration = freezed,
    Object? mp3 = freezed,
  }) {
    return _then(_$_Repertoire(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      mp3: mp3 == freezed
          ? _value.mp3
          : mp3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repertoire implements _Repertoire {
  _$_Repertoire(
      {required this.name,
      required this.composer,
      required this.duration,
      required this.mp3});

  factory _$_Repertoire.fromJson(Map<String, dynamic> json) =>
      _$$_RepertoireFromJson(json);

  @override
  final String name;
  @override
  final String composer;
  @override
  final int duration;
  @override
  final String mp3;

  @override
  String toString() {
    return 'Repertoire(name: $name, composer: $composer, duration: $duration, mp3: $mp3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repertoire &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.composer, composer) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.mp3, mp3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(composer),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(mp3));

  @JsonKey(ignore: true)
  @override
  _$$_RepertoireCopyWith<_$_Repertoire> get copyWith =>
      __$$_RepertoireCopyWithImpl<_$_Repertoire>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepertoireToJson(
      this,
    );
  }
}

abstract class _Repertoire implements Repertoire {
  factory _Repertoire(
      {required final String name,
      required final String composer,
      required final int duration,
      required final String mp3}) = _$_Repertoire;

  factory _Repertoire.fromJson(Map<String, dynamic> json) =
      _$_Repertoire.fromJson;

  @override
  String get name;
  @override
  String get composer;
  @override
  int get duration;
  @override
  String get mp3;
  @override
  @JsonKey(ignore: true)
  _$$_RepertoireCopyWith<_$_Repertoire> get copyWith =>
      throw _privateConstructorUsedError;
}
