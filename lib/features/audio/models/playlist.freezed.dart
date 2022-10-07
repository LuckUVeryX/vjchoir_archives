// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Playlist {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String get artwork => throw _privateConstructorUsedError;
  List<Repertoire> get repertoires => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
  $Res call(
      {String id, int index, String artwork, List<Repertoire> repertoires});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? artwork = freezed,
    Object? repertoires = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      repertoires: repertoires == freezed
          ? _value.repertoires
          : repertoires // ignore: cast_nullable_to_non_nullable
              as List<Repertoire>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$$_PlaylistCopyWith(
          _$_Playlist value, $Res Function(_$_Playlist) then) =
      __$$_PlaylistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, int index, String artwork, List<Repertoire> repertoires});
}

/// @nodoc
class __$$_PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$$_PlaylistCopyWith<$Res> {
  __$$_PlaylistCopyWithImpl(
      _$_Playlist _value, $Res Function(_$_Playlist) _then)
      : super(_value, (v) => _then(v as _$_Playlist));

  @override
  _$_Playlist get _value => super._value as _$_Playlist;

  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? artwork = freezed,
    Object? repertoires = freezed,
  }) {
    return _then(_$_Playlist(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      repertoires: repertoires == freezed
          ? _value._repertoires
          : repertoires // ignore: cast_nullable_to_non_nullable
              as List<Repertoire>,
    ));
  }
}

/// @nodoc

class _$_Playlist implements _Playlist {
  const _$_Playlist(
      {required this.id,
      required this.index,
      required this.artwork,
      required final List<Repertoire> repertoires})
      : _repertoires = repertoires;

  @override
  final String id;
  @override
  final int index;
  @override
  final String artwork;
  final List<Repertoire> _repertoires;
  @override
  List<Repertoire> get repertoires {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repertoires);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Playlist &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.artwork, artwork) &&
            const DeepCollectionEquality()
                .equals(other._repertoires, _repertoires));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(artwork),
      const DeepCollectionEquality().hash(_repertoires));

  @JsonKey(ignore: true)
  @override
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      __$$_PlaylistCopyWithImpl<_$_Playlist>(this, _$identity);
}

abstract class _Playlist implements Playlist {
  const factory _Playlist(
      {required final String id,
      required final int index,
      required final String artwork,
      required final List<Repertoire> repertoires}) = _$_Playlist;

  @override
  String get id;
  @override
  int get index;
  @override
  String get artwork;
  @override
  List<Repertoire> get repertoires;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
