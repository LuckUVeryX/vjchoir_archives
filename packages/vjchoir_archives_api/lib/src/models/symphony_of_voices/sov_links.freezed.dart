// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sov_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SovLinks _$SovLinksFromJson(Map<String, dynamic> json) {
  return _SovLinks.fromJson(json);
}

/// @nodoc
mixin _$SovLinks {
  YoutubeLink? get yt => throw _privateConstructorUsedError;
  DownloadLinks? get dls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SovLinksCopyWith<SovLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SovLinksCopyWith<$Res> {
  factory $SovLinksCopyWith(SovLinks value, $Res Function(SovLinks) then) =
      _$SovLinksCopyWithImpl<$Res>;
  $Res call({YoutubeLink? yt, DownloadLinks? dls});

  $YoutubeLinkCopyWith<$Res>? get yt;
  $DownloadLinksCopyWith<$Res>? get dls;
}

/// @nodoc
class _$SovLinksCopyWithImpl<$Res> implements $SovLinksCopyWith<$Res> {
  _$SovLinksCopyWithImpl(this._value, this._then);

  final SovLinks _value;
  // ignore: unused_field
  final $Res Function(SovLinks) _then;

  @override
  $Res call({
    Object? yt = freezed,
    Object? dls = freezed,
  }) {
    return _then(_value.copyWith(
      yt: yt == freezed
          ? _value.yt
          : yt // ignore: cast_nullable_to_non_nullable
              as YoutubeLink?,
      dls: dls == freezed
          ? _value.dls
          : dls // ignore: cast_nullable_to_non_nullable
              as DownloadLinks?,
    ));
  }

  @override
  $YoutubeLinkCopyWith<$Res>? get yt {
    if (_value.yt == null) {
      return null;
    }

    return $YoutubeLinkCopyWith<$Res>(_value.yt!, (value) {
      return _then(_value.copyWith(yt: value));
    });
  }

  @override
  $DownloadLinksCopyWith<$Res>? get dls {
    if (_value.dls == null) {
      return null;
    }

    return $DownloadLinksCopyWith<$Res>(_value.dls!, (value) {
      return _then(_value.copyWith(dls: value));
    });
  }
}

/// @nodoc
abstract class _$$_SovLinksCopyWith<$Res> implements $SovLinksCopyWith<$Res> {
  factory _$$_SovLinksCopyWith(
          _$_SovLinks value, $Res Function(_$_SovLinks) then) =
      __$$_SovLinksCopyWithImpl<$Res>;
  @override
  $Res call({YoutubeLink? yt, DownloadLinks? dls});

  @override
  $YoutubeLinkCopyWith<$Res>? get yt;
  @override
  $DownloadLinksCopyWith<$Res>? get dls;
}

/// @nodoc
class __$$_SovLinksCopyWithImpl<$Res> extends _$SovLinksCopyWithImpl<$Res>
    implements _$$_SovLinksCopyWith<$Res> {
  __$$_SovLinksCopyWithImpl(
      _$_SovLinks _value, $Res Function(_$_SovLinks) _then)
      : super(_value, (v) => _then(v as _$_SovLinks));

  @override
  _$_SovLinks get _value => super._value as _$_SovLinks;

  @override
  $Res call({
    Object? yt = freezed,
    Object? dls = freezed,
  }) {
    return _then(_$_SovLinks(
      yt: yt == freezed
          ? _value.yt
          : yt // ignore: cast_nullable_to_non_nullable
              as YoutubeLink?,
      dls: dls == freezed
          ? _value.dls
          : dls // ignore: cast_nullable_to_non_nullable
              as DownloadLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SovLinks implements _SovLinks {
  const _$_SovLinks({this.yt, this.dls});

  factory _$_SovLinks.fromJson(Map<String, dynamic> json) =>
      _$$_SovLinksFromJson(json);

  @override
  final YoutubeLink? yt;
  @override
  final DownloadLinks? dls;

  @override
  String toString() {
    return 'SovLinks(yt: $yt, dls: $dls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SovLinks &&
            const DeepCollectionEquality().equals(other.yt, yt) &&
            const DeepCollectionEquality().equals(other.dls, dls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yt),
      const DeepCollectionEquality().hash(dls));

  @JsonKey(ignore: true)
  @override
  _$$_SovLinksCopyWith<_$_SovLinks> get copyWith =>
      __$$_SovLinksCopyWithImpl<_$_SovLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SovLinksToJson(
      this,
    );
  }
}

abstract class _SovLinks implements SovLinks {
  const factory _SovLinks({final YoutubeLink? yt, final DownloadLinks? dls}) =
      _$_SovLinks;

  factory _SovLinks.fromJson(Map<String, dynamic> json) = _$_SovLinks.fromJson;

  @override
  YoutubeLink? get yt;
  @override
  DownloadLinks? get dls;
  @override
  @JsonKey(ignore: true)
  _$$_SovLinksCopyWith<_$_SovLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
