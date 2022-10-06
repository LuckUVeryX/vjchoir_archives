// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sov.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sov _$SovFromJson(Map<String, dynamic> json) {
  return _Sov.fromJson(json);
}

/// @nodoc
mixin _$Sov {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get abbr => throw _privateConstructorUsedError;
  SovInfo get info => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get artwork => throw _privateConstructorUsedError;
  List<Repertoire> get repertoire => throw _privateConstructorUsedError;
  SovLinks get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SovCopyWith<Sov> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SovCopyWith<$Res> {
  factory $SovCopyWith(Sov value, $Res Function(Sov) then) =
      _$SovCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String abbr,
      SovInfo info,
      String intro,
      String artwork,
      List<Repertoire> repertoire,
      SovLinks links});

  $SovInfoCopyWith<$Res> get info;
  $SovLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$SovCopyWithImpl<$Res> implements $SovCopyWith<$Res> {
  _$SovCopyWithImpl(this._value, this._then);

  final Sov _value;
  // ignore: unused_field
  final $Res Function(Sov) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? abbr = freezed,
    Object? info = freezed,
    Object? intro = freezed,
    Object? artwork = freezed,
    Object? repertoire = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abbr: abbr == freezed
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SovInfo,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      repertoire: repertoire == freezed
          ? _value.repertoire
          : repertoire // ignore: cast_nullable_to_non_nullable
              as List<Repertoire>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as SovLinks,
    ));
  }

  @override
  $SovInfoCopyWith<$Res> get info {
    return $SovInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $SovLinksCopyWith<$Res> get links {
    return $SovLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$$_SovCopyWith<$Res> implements $SovCopyWith<$Res> {
  factory _$$_SovCopyWith(_$_Sov value, $Res Function(_$_Sov) then) =
      __$$_SovCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String abbr,
      SovInfo info,
      String intro,
      String artwork,
      List<Repertoire> repertoire,
      SovLinks links});

  @override
  $SovInfoCopyWith<$Res> get info;
  @override
  $SovLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$_SovCopyWithImpl<$Res> extends _$SovCopyWithImpl<$Res>
    implements _$$_SovCopyWith<$Res> {
  __$$_SovCopyWithImpl(_$_Sov _value, $Res Function(_$_Sov) _then)
      : super(_value, (v) => _then(v as _$_Sov));

  @override
  _$_Sov get _value => super._value as _$_Sov;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? abbr = freezed,
    Object? info = freezed,
    Object? intro = freezed,
    Object? artwork = freezed,
    Object? repertoire = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_Sov(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      abbr: abbr == freezed
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SovInfo,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      artwork: artwork == freezed
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      repertoire: repertoire == freezed
          ? _value._repertoire
          : repertoire // ignore: cast_nullable_to_non_nullable
              as List<Repertoire>,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as SovLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sov implements _Sov {
  _$_Sov(
      {required this.id,
      required this.title,
      required this.abbr,
      required this.info,
      required this.intro,
      required this.artwork,
      required final List<Repertoire> repertoire,
      required this.links})
      : _repertoire = repertoire;

  factory _$_Sov.fromJson(Map<String, dynamic> json) => _$$_SovFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String abbr;
  @override
  final SovInfo info;
  @override
  final String intro;
  @override
  final String artwork;
  final List<Repertoire> _repertoire;
  @override
  List<Repertoire> get repertoire {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repertoire);
  }

  @override
  final SovLinks links;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sov &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.abbr, abbr) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.intro, intro) &&
            const DeepCollectionEquality().equals(other.artwork, artwork) &&
            const DeepCollectionEquality()
                .equals(other._repertoire, _repertoire) &&
            const DeepCollectionEquality().equals(other.links, links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(abbr),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(intro),
      const DeepCollectionEquality().hash(artwork),
      const DeepCollectionEquality().hash(_repertoire),
      const DeepCollectionEquality().hash(links));

  @JsonKey(ignore: true)
  @override
  _$$_SovCopyWith<_$_Sov> get copyWith =>
      __$$_SovCopyWithImpl<_$_Sov>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SovToJson(
      this,
    );
  }
}

abstract class _Sov implements Sov {
  factory _Sov(
      {required final int id,
      required final String title,
      required final String abbr,
      required final SovInfo info,
      required final String intro,
      required final String artwork,
      required final List<Repertoire> repertoire,
      required final SovLinks links}) = _$_Sov;

  factory _Sov.fromJson(Map<String, dynamic> json) = _$_Sov.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get abbr;
  @override
  SovInfo get info;
  @override
  String get intro;
  @override
  String get artwork;
  @override
  List<Repertoire> get repertoire;
  @override
  SovLinks get links;
  @override
  @JsonKey(ignore: true)
  _$$_SovCopyWith<_$_Sov> get copyWith => throw _privateConstructorUsedError;
}
