// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioState {
  AudioModel get audioModel => throw _privateConstructorUsedError;
  AudioPositionModel get audioPosition => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get composer => throw _privateConstructorUsedError;
  String? get artwork => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res>;
  $Res call(
      {AudioModel audioModel,
      AudioPositionModel audioPosition,
      String? title,
      String? composer,
      String? artwork});

  $AudioModelCopyWith<$Res> get audioModel;
  $AudioPositionModelCopyWith<$Res> get audioPosition;
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res> implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  final AudioState _value;
  // ignore: unused_field
  final $Res Function(AudioState) _then;

  @override
  $Res call({
    Object? audioModel = freezed,
    Object? audioPosition = freezed,
    Object? title = freezed,
    Object? composer = freezed,
    Object? artwork = freezed,
  }) {
    return _then(_value.copyWith(
      audioModel: audioModel == freezed
          ? _value.audioModel
          : audioModel // ignore: cast_nullable_to_non_nullable
              as AudioModel,
      audioPosition: audioPosition == freezed
          ? _value.audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as AudioPositionModel,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String?,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AudioModelCopyWith<$Res> get audioModel {
    return $AudioModelCopyWith<$Res>(_value.audioModel, (value) {
      return _then(_value.copyWith(audioModel: value));
    });
  }

  @override
  $AudioPositionModelCopyWith<$Res> get audioPosition {
    return $AudioPositionModelCopyWith<$Res>(_value.audioPosition, (value) {
      return _then(_value.copyWith(audioPosition: value));
    });
  }
}

/// @nodoc
abstract class _$$_AudioStateCopyWith<$Res>
    implements $AudioStateCopyWith<$Res> {
  factory _$$_AudioStateCopyWith(
          _$_AudioState value, $Res Function(_$_AudioState) then) =
      __$$_AudioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AudioModel audioModel,
      AudioPositionModel audioPosition,
      String? title,
      String? composer,
      String? artwork});

  @override
  $AudioModelCopyWith<$Res> get audioModel;
  @override
  $AudioPositionModelCopyWith<$Res> get audioPosition;
}

/// @nodoc
class __$$_AudioStateCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements _$$_AudioStateCopyWith<$Res> {
  __$$_AudioStateCopyWithImpl(
      _$_AudioState _value, $Res Function(_$_AudioState) _then)
      : super(_value, (v) => _then(v as _$_AudioState));

  @override
  _$_AudioState get _value => super._value as _$_AudioState;

  @override
  $Res call({
    Object? audioModel = freezed,
    Object? audioPosition = freezed,
    Object? title = freezed,
    Object? composer = freezed,
    Object? artwork = freezed,
  }) {
    return _then(_$_AudioState(
      audioModel: audioModel == freezed
          ? _value.audioModel
          : audioModel // ignore: cast_nullable_to_non_nullable
              as AudioModel,
      audioPosition: audioPosition == freezed
          ? _value.audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as AudioPositionModel,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      composer: composer == freezed
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String?,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AudioState implements _AudioState {
  const _$_AudioState(
      {required this.audioModel,
      required this.audioPosition,
      required this.title,
      required this.composer,
      required this.artwork});

  @override
  final AudioModel audioModel;
  @override
  final AudioPositionModel audioPosition;
  @override
  final String? title;
  @override
  final String? composer;
  @override
  final String? artwork;

  @override
  String toString() {
    return 'AudioState(audioModel: $audioModel, audioPosition: $audioPosition, title: $title, composer: $composer, artwork: $artwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioState &&
            const DeepCollectionEquality()
                .equals(other.audioModel, audioModel) &&
            const DeepCollectionEquality()
                .equals(other.audioPosition, audioPosition) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.composer, composer) &&
            const DeepCollectionEquality().equals(other.artwork, artwork));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(audioModel),
      const DeepCollectionEquality().hash(audioPosition),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(composer),
      const DeepCollectionEquality().hash(artwork));

  @JsonKey(ignore: true)
  @override
  _$$_AudioStateCopyWith<_$_AudioState> get copyWith =>
      __$$_AudioStateCopyWithImpl<_$_AudioState>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
      {required final AudioModel audioModel,
      required final AudioPositionModel audioPosition,
      required final String? title,
      required final String? composer,
      required final String? artwork}) = _$_AudioState;

  @override
  AudioModel get audioModel;
  @override
  AudioPositionModel get audioPosition;
  @override
  String? get title;
  @override
  String? get composer;
  @override
  String? get artwork;
  @override
  @JsonKey(ignore: true)
  _$$_AudioStateCopyWith<_$_AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}
