// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'external_links_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExternalLinks {
  String? get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String url) youtube,
    required TResult Function(String? name, String url) googleDrive,
    required TResult Function(String? name, String url) dropbox,
    required TResult Function(String? name, String url) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Youtube value) youtube,
    required TResult Function(_GoogleDrive value) googleDrive,
    required TResult Function(_Dropbox value) dropbox,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExternalLinksCopyWith<ExternalLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalLinksCopyWith<$Res> {
  factory $ExternalLinksCopyWith(
          ExternalLinks value, $Res Function(ExternalLinks) then) =
      _$ExternalLinksCopyWithImpl<$Res>;
  $Res call({String? name, String url});
}

/// @nodoc
class _$ExternalLinksCopyWithImpl<$Res>
    implements $ExternalLinksCopyWith<$Res> {
  _$ExternalLinksCopyWithImpl(this._value, this._then);

  final ExternalLinks _value;
  // ignore: unused_field
  final $Res Function(ExternalLinks) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_YoutubeCopyWith<$Res>
    implements $ExternalLinksCopyWith<$Res> {
  factory _$$_YoutubeCopyWith(
          _$_Youtube value, $Res Function(_$_Youtube) then) =
      __$$_YoutubeCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String url});
}

/// @nodoc
class __$$_YoutubeCopyWithImpl<$Res> extends _$ExternalLinksCopyWithImpl<$Res>
    implements _$$_YoutubeCopyWith<$Res> {
  __$$_YoutubeCopyWithImpl(_$_Youtube _value, $Res Function(_$_Youtube) _then)
      : super(_value, (v) => _then(v as _$_Youtube));

  @override
  _$_Youtube get _value => super._value as _$_Youtube;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Youtube(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Youtube implements _Youtube {
  const _$_Youtube({this.name, required this.url});

  @override
  final String? name;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalLinks.youtube(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Youtube &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_YoutubeCopyWith<_$_Youtube> get copyWith =>
      __$$_YoutubeCopyWithImpl<_$_Youtube>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String url) youtube,
    required TResult Function(String? name, String url) googleDrive,
    required TResult Function(String? name, String url) dropbox,
    required TResult Function(String? name, String url) unknown,
  }) {
    return youtube(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
  }) {
    return youtube?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
    required TResult orElse(),
  }) {
    if (youtube != null) {
      return youtube(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Youtube value) youtube,
    required TResult Function(_GoogleDrive value) googleDrive,
    required TResult Function(_Dropbox value) dropbox,
    required TResult Function(_Unknown value) unknown,
  }) {
    return youtube(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
  }) {
    return youtube?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (youtube != null) {
      return youtube(this);
    }
    return orElse();
  }
}

abstract class _Youtube implements ExternalLinks {
  const factory _Youtube({final String? name, required final String url}) =
      _$_Youtube;

  @override
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeCopyWith<_$_Youtube> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GoogleDriveCopyWith<$Res>
    implements $ExternalLinksCopyWith<$Res> {
  factory _$$_GoogleDriveCopyWith(
          _$_GoogleDrive value, $Res Function(_$_GoogleDrive) then) =
      __$$_GoogleDriveCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String url});
}

/// @nodoc
class __$$_GoogleDriveCopyWithImpl<$Res>
    extends _$ExternalLinksCopyWithImpl<$Res>
    implements _$$_GoogleDriveCopyWith<$Res> {
  __$$_GoogleDriveCopyWithImpl(
      _$_GoogleDrive _value, $Res Function(_$_GoogleDrive) _then)
      : super(_value, (v) => _then(v as _$_GoogleDrive));

  @override
  _$_GoogleDrive get _value => super._value as _$_GoogleDrive;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_GoogleDrive(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GoogleDrive implements _GoogleDrive {
  const _$_GoogleDrive({this.name, required this.url});

  @override
  final String? name;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalLinks.googleDrive(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoogleDrive &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_GoogleDriveCopyWith<_$_GoogleDrive> get copyWith =>
      __$$_GoogleDriveCopyWithImpl<_$_GoogleDrive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String url) youtube,
    required TResult Function(String? name, String url) googleDrive,
    required TResult Function(String? name, String url) dropbox,
    required TResult Function(String? name, String url) unknown,
  }) {
    return googleDrive(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
  }) {
    return googleDrive?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
    required TResult orElse(),
  }) {
    if (googleDrive != null) {
      return googleDrive(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Youtube value) youtube,
    required TResult Function(_GoogleDrive value) googleDrive,
    required TResult Function(_Dropbox value) dropbox,
    required TResult Function(_Unknown value) unknown,
  }) {
    return googleDrive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
  }) {
    return googleDrive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (googleDrive != null) {
      return googleDrive(this);
    }
    return orElse();
  }
}

abstract class _GoogleDrive implements ExternalLinks {
  const factory _GoogleDrive({final String? name, required final String url}) =
      _$_GoogleDrive;

  @override
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleDriveCopyWith<_$_GoogleDrive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DropboxCopyWith<$Res>
    implements $ExternalLinksCopyWith<$Res> {
  factory _$$_DropboxCopyWith(
          _$_Dropbox value, $Res Function(_$_Dropbox) then) =
      __$$_DropboxCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String url});
}

/// @nodoc
class __$$_DropboxCopyWithImpl<$Res> extends _$ExternalLinksCopyWithImpl<$Res>
    implements _$$_DropboxCopyWith<$Res> {
  __$$_DropboxCopyWithImpl(_$_Dropbox _value, $Res Function(_$_Dropbox) _then)
      : super(_value, (v) => _then(v as _$_Dropbox));

  @override
  _$_Dropbox get _value => super._value as _$_Dropbox;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Dropbox(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Dropbox implements _Dropbox {
  const _$_Dropbox({this.name, required this.url});

  @override
  final String? name;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalLinks.dropbox(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dropbox &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_DropboxCopyWith<_$_Dropbox> get copyWith =>
      __$$_DropboxCopyWithImpl<_$_Dropbox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String url) youtube,
    required TResult Function(String? name, String url) googleDrive,
    required TResult Function(String? name, String url) dropbox,
    required TResult Function(String? name, String url) unknown,
  }) {
    return dropbox(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
  }) {
    return dropbox?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
    required TResult orElse(),
  }) {
    if (dropbox != null) {
      return dropbox(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Youtube value) youtube,
    required TResult Function(_GoogleDrive value) googleDrive,
    required TResult Function(_Dropbox value) dropbox,
    required TResult Function(_Unknown value) unknown,
  }) {
    return dropbox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
  }) {
    return dropbox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (dropbox != null) {
      return dropbox(this);
    }
    return orElse();
  }
}

abstract class _Dropbox implements ExternalLinks {
  const factory _Dropbox({final String? name, required final String url}) =
      _$_Dropbox;

  @override
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_DropboxCopyWith<_$_Dropbox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res>
    implements $ExternalLinksCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String url});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res> extends _$ExternalLinksCopyWithImpl<$Res>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, (v) => _then(v as _$_Unknown));

  @override
  _$_Unknown get _value => super._value as _$_Unknown;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Unknown(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown({this.name, required this.url});

  @override
  final String? name;
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalLinks.unknown(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String url) youtube,
    required TResult Function(String? name, String url) googleDrive,
    required TResult Function(String? name, String url) dropbox,
    required TResult Function(String? name, String url) unknown,
  }) {
    return unknown(name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
  }) {
    return unknown?.call(name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String url)? youtube,
    TResult Function(String? name, String url)? googleDrive,
    TResult Function(String? name, String url)? dropbox,
    TResult Function(String? name, String url)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Youtube value) youtube,
    required TResult Function(_GoogleDrive value) googleDrive,
    required TResult Function(_Dropbox value) dropbox,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Youtube value)? youtube,
    TResult Function(_GoogleDrive value)? googleDrive,
    TResult Function(_Dropbox value)? dropbox,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements ExternalLinks {
  const factory _Unknown({final String? name, required final String url}) =
      _$_Unknown;

  @override
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExternalLinksState {
  List<ExternalLinks> get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExternalLinksStateCopyWith<ExternalLinksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalLinksStateCopyWith<$Res> {
  factory $ExternalLinksStateCopyWith(
          ExternalLinksState value, $Res Function(ExternalLinksState) then) =
      _$ExternalLinksStateCopyWithImpl<$Res>;
  $Res call({List<ExternalLinks> links});
}

/// @nodoc
class _$ExternalLinksStateCopyWithImpl<$Res>
    implements $ExternalLinksStateCopyWith<$Res> {
  _$ExternalLinksStateCopyWithImpl(this._value, this._then);

  final ExternalLinksState _value;
  // ignore: unused_field
  final $Res Function(ExternalLinksState) _then;

  @override
  $Res call({
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ExternalLinks>,
    ));
  }
}

/// @nodoc
abstract class _$$_ExternalLinksStateCopyWith<$Res>
    implements $ExternalLinksStateCopyWith<$Res> {
  factory _$$_ExternalLinksStateCopyWith(_$_ExternalLinksState value,
          $Res Function(_$_ExternalLinksState) then) =
      __$$_ExternalLinksStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ExternalLinks> links});
}

/// @nodoc
class __$$_ExternalLinksStateCopyWithImpl<$Res>
    extends _$ExternalLinksStateCopyWithImpl<$Res>
    implements _$$_ExternalLinksStateCopyWith<$Res> {
  __$$_ExternalLinksStateCopyWithImpl(
      _$_ExternalLinksState _value, $Res Function(_$_ExternalLinksState) _then)
      : super(_value, (v) => _then(v as _$_ExternalLinksState));

  @override
  _$_ExternalLinksState get _value => super._value as _$_ExternalLinksState;

  @override
  $Res call({
    Object? links = freezed,
  }) {
    return _then(_$_ExternalLinksState(
      links: links == freezed
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ExternalLinks>,
    ));
  }
}

/// @nodoc

class _$_ExternalLinksState implements _ExternalLinksState {
  const _$_ExternalLinksState({required final List<ExternalLinks> links})
      : _links = links;

  final List<ExternalLinks> _links;
  @override
  List<ExternalLinks> get links {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'ExternalLinksState(links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalLinksState &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  _$$_ExternalLinksStateCopyWith<_$_ExternalLinksState> get copyWith =>
      __$$_ExternalLinksStateCopyWithImpl<_$_ExternalLinksState>(
          this, _$identity);
}

abstract class _ExternalLinksState implements ExternalLinksState {
  const factory _ExternalLinksState(
      {required final List<ExternalLinks> links}) = _$_ExternalLinksState;

  @override
  List<ExternalLinks> get links;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalLinksStateCopyWith<_$_ExternalLinksState> get copyWith =>
      throw _privateConstructorUsedError;
}
