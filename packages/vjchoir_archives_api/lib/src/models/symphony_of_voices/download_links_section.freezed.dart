// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_links_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadLinksSection _$DownloadLinksSectionFromJson(Map<String, dynamic> json) {
  return _DownloadLinksSection.fromJson(json);
}

/// @nodoc
mixin _$DownloadLinksSection {
  String get title => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  List<DownloadLink>? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadLinksSectionCopyWith<DownloadLinksSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadLinksSectionCopyWith<$Res> {
  factory $DownloadLinksSectionCopyWith(DownloadLinksSection value,
          $Res Function(DownloadLinksSection) then) =
      _$DownloadLinksSectionCopyWithImpl<$Res>;
  $Res call({String title, String desc, List<DownloadLink>? links});
}

/// @nodoc
class _$DownloadLinksSectionCopyWithImpl<$Res>
    implements $DownloadLinksSectionCopyWith<$Res> {
  _$DownloadLinksSectionCopyWithImpl(this._value, this._then);

  final DownloadLinksSection _value;
  // ignore: unused_field
  final $Res Function(DownloadLinksSection) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? desc = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<DownloadLink>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadLinksSectionCopyWith<$Res>
    implements $DownloadLinksSectionCopyWith<$Res> {
  factory _$$_DownloadLinksSectionCopyWith(_$_DownloadLinksSection value,
          $Res Function(_$_DownloadLinksSection) then) =
      __$$_DownloadLinksSectionCopyWithImpl<$Res>;
  @override
  $Res call({String title, String desc, List<DownloadLink>? links});
}

/// @nodoc
class __$$_DownloadLinksSectionCopyWithImpl<$Res>
    extends _$DownloadLinksSectionCopyWithImpl<$Res>
    implements _$$_DownloadLinksSectionCopyWith<$Res> {
  __$$_DownloadLinksSectionCopyWithImpl(_$_DownloadLinksSection _value,
      $Res Function(_$_DownloadLinksSection) _then)
      : super(_value, (v) => _then(v as _$_DownloadLinksSection));

  @override
  _$_DownloadLinksSection get _value => super._value as _$_DownloadLinksSection;

  @override
  $Res call({
    Object? title = freezed,
    Object? desc = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_DownloadLinksSection(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<DownloadLink>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadLinksSection implements _DownloadLinksSection {
  const _$_DownloadLinksSection(
      {required this.title,
      required this.desc,
      final List<DownloadLink>? links})
      : _links = links;

  factory _$_DownloadLinksSection.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadLinksSectionFromJson(json);

  @override
  final String title;
  @override
  final String desc;
  final List<DownloadLink>? _links;
  @override
  List<DownloadLink>? get links {
    final value = _links;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DownloadLinksSection(title: $title, desc: $desc, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadLinksSection &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadLinksSectionCopyWith<_$_DownloadLinksSection> get copyWith =>
      __$$_DownloadLinksSectionCopyWithImpl<_$_DownloadLinksSection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadLinksSectionToJson(
      this,
    );
  }
}

abstract class _DownloadLinksSection implements DownloadLinksSection {
  const factory _DownloadLinksSection(
      {required final String title,
      required final String desc,
      final List<DownloadLink>? links}) = _$_DownloadLinksSection;

  factory _DownloadLinksSection.fromJson(Map<String, dynamic> json) =
      _$_DownloadLinksSection.fromJson;

  @override
  String get title;
  @override
  String get desc;
  @override
  List<DownloadLink>? get links;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadLinksSectionCopyWith<_$_DownloadLinksSection> get copyWith =>
      throw _privateConstructorUsedError;
}
