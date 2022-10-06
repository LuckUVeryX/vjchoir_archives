// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPositionModel {
  Duration get position => throw _privateConstructorUsedError;
  Duration get bufferedPosition => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPositionModelCopyWith<AudioPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPositionModelCopyWith<$Res> {
  factory $AudioPositionModelCopyWith(
          AudioPositionModel value, $Res Function(AudioPositionModel) then) =
      _$AudioPositionModelCopyWithImpl<$Res>;
  $Res call({Duration position, Duration bufferedPosition, Duration duration});
}

/// @nodoc
class _$AudioPositionModelCopyWithImpl<$Res>
    implements $AudioPositionModelCopyWith<$Res> {
  _$AudioPositionModelCopyWithImpl(this._value, this._then);

  final AudioPositionModel _value;
  // ignore: unused_field
  final $Res Function(AudioPositionModel) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioPositionModelCopyWith<$Res>
    implements $AudioPositionModelCopyWith<$Res> {
  factory _$$_AudioPositionModelCopyWith(_$_AudioPositionModel value,
          $Res Function(_$_AudioPositionModel) then) =
      __$$_AudioPositionModelCopyWithImpl<$Res>;
  @override
  $Res call({Duration position, Duration bufferedPosition, Duration duration});
}

/// @nodoc
class __$$_AudioPositionModelCopyWithImpl<$Res>
    extends _$AudioPositionModelCopyWithImpl<$Res>
    implements _$$_AudioPositionModelCopyWith<$Res> {
  __$$_AudioPositionModelCopyWithImpl(
      _$_AudioPositionModel _value, $Res Function(_$_AudioPositionModel) _then)
      : super(_value, (v) => _then(v as _$_AudioPositionModel));

  @override
  _$_AudioPositionModel get _value => super._value as _$_AudioPositionModel;

  @override
  $Res call({
    Object? position = freezed,
    Object? bufferedPosition = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_AudioPositionModel(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AudioPositionModel implements _AudioPositionModel {
  const _$_AudioPositionModel(
      {required this.position,
      required this.bufferedPosition,
      required this.duration});

  @override
  final Duration position;
  @override
  final Duration bufferedPosition;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'AudioPositionModel(position: $position, bufferedPosition: $bufferedPosition, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPositionModel &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.bufferedPosition, bufferedPosition) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(bufferedPosition),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_AudioPositionModelCopyWith<_$_AudioPositionModel> get copyWith =>
      __$$_AudioPositionModelCopyWithImpl<_$_AudioPositionModel>(
          this, _$identity);
}

abstract class _AudioPositionModel implements AudioPositionModel {
  const factory _AudioPositionModel(
      {required final Duration position,
      required final Duration bufferedPosition,
      required final Duration duration}) = _$_AudioPositionModel;

  @override
  Duration get position;
  @override
  Duration get bufferedPosition;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPositionModelCopyWith<_$_AudioPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
