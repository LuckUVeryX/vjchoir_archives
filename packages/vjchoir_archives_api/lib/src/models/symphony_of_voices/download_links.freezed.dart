// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadLinks _$DownloadLinksFromJson(Map<String, dynamic> json) {
  return _DownloadLinks.fromJson(json);
}

/// @nodoc
mixin _$DownloadLinks {
  List<DownloadLinksSection>? get sections =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadLinksCopyWith<DownloadLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadLinksCopyWith<$Res> {
  factory $DownloadLinksCopyWith(
          DownloadLinks value, $Res Function(DownloadLinks) then) =
      _$DownloadLinksCopyWithImpl<$Res>;
  $Res call({List<DownloadLinksSection>? sections});
}

/// @nodoc
class _$DownloadLinksCopyWithImpl<$Res>
    implements $DownloadLinksCopyWith<$Res> {
  _$DownloadLinksCopyWithImpl(this._value, this._then);

  final DownloadLinks _value;
  // ignore: unused_field
  final $Res Function(DownloadLinks) _then;

  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<DownloadLinksSection>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadLinksCopyWith<$Res>
    implements $DownloadLinksCopyWith<$Res> {
  factory _$$_DownloadLinksCopyWith(
          _$_DownloadLinks value, $Res Function(_$_DownloadLinks) then) =
      __$$_DownloadLinksCopyWithImpl<$Res>;
  @override
  $Res call({List<DownloadLinksSection>? sections});
}

/// @nodoc
class __$$_DownloadLinksCopyWithImpl<$Res>
    extends _$DownloadLinksCopyWithImpl<$Res>
    implements _$$_DownloadLinksCopyWith<$Res> {
  __$$_DownloadLinksCopyWithImpl(
      _$_DownloadLinks _value, $Res Function(_$_DownloadLinks) _then)
      : super(_value, (v) => _then(v as _$_DownloadLinks));

  @override
  _$_DownloadLinks get _value => super._value as _$_DownloadLinks;

  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_$_DownloadLinks(
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<DownloadLinksSection>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadLinks implements _DownloadLinks {
  const _$_DownloadLinks({final List<DownloadLinksSection>? sections})
      : _sections = sections;

  factory _$_DownloadLinks.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadLinksFromJson(json);

  final List<DownloadLinksSection>? _sections;
  @override
  List<DownloadLinksSection>? get sections {
    final value = _sections;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DownloadLinks(sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadLinks &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadLinksCopyWith<_$_DownloadLinks> get copyWith =>
      __$$_DownloadLinksCopyWithImpl<_$_DownloadLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadLinksToJson(
      this,
    );
  }
}

abstract class _DownloadLinks implements DownloadLinks {
  const factory _DownloadLinks({final List<DownloadLinksSection>? sections}) =
      _$_DownloadLinks;

  factory _DownloadLinks.fromJson(Map<String, dynamic> json) =
      _$_DownloadLinks.fromJson;

  @override
  List<DownloadLinksSection>? get sections;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadLinksCopyWith<_$_DownloadLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
