// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeLink _$YoutubeLinkFromJson(Map<String, dynamic> json) {
  return _YoutubeLink.fromJson(json);
}

/// @nodoc
mixin _$YoutubeLink {
  String? get link => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeLinkCopyWith<YoutubeLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeLinkCopyWith<$Res> {
  factory $YoutubeLinkCopyWith(
          YoutubeLink value, $Res Function(YoutubeLink) then) =
      _$YoutubeLinkCopyWithImpl<$Res>;
  $Res call({String? link, String desc});
}

/// @nodoc
class _$YoutubeLinkCopyWithImpl<$Res> implements $YoutubeLinkCopyWith<$Res> {
  _$YoutubeLinkCopyWithImpl(this._value, this._then);

  final YoutubeLink _value;
  // ignore: unused_field
  final $Res Function(YoutubeLink) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_YoutubeLinkCopyWith<$Res>
    implements $YoutubeLinkCopyWith<$Res> {
  factory _$$_YoutubeLinkCopyWith(
          _$_YoutubeLink value, $Res Function(_$_YoutubeLink) then) =
      __$$_YoutubeLinkCopyWithImpl<$Res>;
  @override
  $Res call({String? link, String desc});
}

/// @nodoc
class __$$_YoutubeLinkCopyWithImpl<$Res> extends _$YoutubeLinkCopyWithImpl<$Res>
    implements _$$_YoutubeLinkCopyWith<$Res> {
  __$$_YoutubeLinkCopyWithImpl(
      _$_YoutubeLink _value, $Res Function(_$_YoutubeLink) _then)
      : super(_value, (v) => _then(v as _$_YoutubeLink));

  @override
  _$_YoutubeLink get _value => super._value as _$_YoutubeLink;

  @override
  $Res call({
    Object? link = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$_YoutubeLink(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeLink implements _YoutubeLink {
  _$_YoutubeLink({this.link, required this.desc});

  factory _$_YoutubeLink.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeLinkFromJson(json);

  @override
  final String? link;
  @override
  final String desc;

  @override
  String toString() {
    return 'YoutubeLink(link: $link, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeLink &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$$_YoutubeLinkCopyWith<_$_YoutubeLink> get copyWith =>
      __$$_YoutubeLinkCopyWithImpl<_$_YoutubeLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeLinkToJson(
      this,
    );
  }
}

abstract class _YoutubeLink implements YoutubeLink {
  factory _YoutubeLink({final String? link, required final String desc}) =
      _$_YoutubeLink;

  factory _YoutubeLink.fromJson(Map<String, dynamic> json) =
      _$_YoutubeLink.fromJson;

  @override
  String? get link;
  @override
  String get desc;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeLinkCopyWith<_$_YoutubeLink> get copyWith =>
      throw _privateConstructorUsedError;
}
