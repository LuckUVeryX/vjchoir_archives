// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadLink _$DownloadLinkFromJson(Map<String, dynamic> json) {
  return _DownloadLink.fromJson(json);
}

/// @nodoc
mixin _$DownloadLink {
// ignore: invalid_annotation_target
  @JsonKey(
      name: 'title',
      fromJson: _platformTypeFromJson,
      toJson: _platformTypeToJson)
  PlatformType? get platformType => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadLinkCopyWith<DownloadLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadLinkCopyWith<$Res> {
  factory $DownloadLinkCopyWith(
          DownloadLink value, $Res Function(DownloadLink) then) =
      _$DownloadLinkCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title', fromJson: _platformTypeFromJson, toJson: _platformTypeToJson)
          PlatformType? platformType,
      String? link});
}

/// @nodoc
class _$DownloadLinkCopyWithImpl<$Res> implements $DownloadLinkCopyWith<$Res> {
  _$DownloadLinkCopyWithImpl(this._value, this._then);

  final DownloadLink _value;
  // ignore: unused_field
  final $Res Function(DownloadLink) _then;

  @override
  $Res call({
    Object? platformType = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      platformType: platformType == freezed
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as PlatformType?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadLinkCopyWith<$Res>
    implements $DownloadLinkCopyWith<$Res> {
  factory _$$_DownloadLinkCopyWith(
          _$_DownloadLink value, $Res Function(_$_DownloadLink) then) =
      __$$_DownloadLinkCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title', fromJson: _platformTypeFromJson, toJson: _platformTypeToJson)
          PlatformType? platformType,
      String? link});
}

/// @nodoc
class __$$_DownloadLinkCopyWithImpl<$Res>
    extends _$DownloadLinkCopyWithImpl<$Res>
    implements _$$_DownloadLinkCopyWith<$Res> {
  __$$_DownloadLinkCopyWithImpl(
      _$_DownloadLink _value, $Res Function(_$_DownloadLink) _then)
      : super(_value, (v) => _then(v as _$_DownloadLink));

  @override
  _$_DownloadLink get _value => super._value as _$_DownloadLink;

  @override
  $Res call({
    Object? platformType = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_DownloadLink(
      platformType: platformType == freezed
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as PlatformType?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadLink implements _DownloadLink {
  const _$_DownloadLink(
      {@JsonKey(name: 'title', fromJson: _platformTypeFromJson, toJson: _platformTypeToJson)
          this.platformType,
      this.link});

  factory _$_DownloadLink.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadLinkFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(
      name: 'title',
      fromJson: _platformTypeFromJson,
      toJson: _platformTypeToJson)
  final PlatformType? platformType;
  @override
  final String? link;

  @override
  String toString() {
    return 'DownloadLink(platformType: $platformType, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadLink &&
            const DeepCollectionEquality()
                .equals(other.platformType, platformType) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(platformType),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadLinkCopyWith<_$_DownloadLink> get copyWith =>
      __$$_DownloadLinkCopyWithImpl<_$_DownloadLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadLinkToJson(
      this,
    );
  }
}

abstract class _DownloadLink implements DownloadLink {
  const factory _DownloadLink(
      {@JsonKey(name: 'title', fromJson: _platformTypeFromJson, toJson: _platformTypeToJson)
          final PlatformType? platformType,
      final String? link}) = _$_DownloadLink;

  factory _DownloadLink.fromJson(Map<String, dynamic> json) =
      _$_DownloadLink.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(
      name: 'title',
      fromJson: _platformTypeFromJson,
      toJson: _platformTypeToJson)
  PlatformType? get platformType;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadLinkCopyWith<_$_DownloadLink> get copyWith =>
      throw _privateConstructorUsedError;
}
