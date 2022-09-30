// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sov_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SovInfo _$SovInfoFromJson(Map<String, dynamic> json) {
  return _SovInfo.fromJson(json);
}

/// @nodoc
mixin _$SovInfo {
  int get date => throw _privateConstructorUsedError;
  String get venue => throw _privateConstructorUsedError;
  String get theme => throw _privateConstructorUsedError;
  int get noFirstHalf => throw _privateConstructorUsedError;
  int get noSecondHalf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SovInfoCopyWith<SovInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SovInfoCopyWith<$Res> {
  factory $SovInfoCopyWith(SovInfo value, $Res Function(SovInfo) then) =
      _$SovInfoCopyWithImpl<$Res>;
  $Res call(
      {int date,
      String venue,
      String theme,
      int noFirstHalf,
      int noSecondHalf});
}

/// @nodoc
class _$SovInfoCopyWithImpl<$Res> implements $SovInfoCopyWith<$Res> {
  _$SovInfoCopyWithImpl(this._value, this._then);

  final SovInfo _value;
  // ignore: unused_field
  final $Res Function(SovInfo) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? venue = freezed,
    Object? theme = freezed,
    Object? noFirstHalf = freezed,
    Object? noSecondHalf = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      noFirstHalf: noFirstHalf == freezed
          ? _value.noFirstHalf
          : noFirstHalf // ignore: cast_nullable_to_non_nullable
              as int,
      noSecondHalf: noSecondHalf == freezed
          ? _value.noSecondHalf
          : noSecondHalf // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SovInfoCopyWith<$Res> implements $SovInfoCopyWith<$Res> {
  factory _$$_SovInfoCopyWith(
          _$_SovInfo value, $Res Function(_$_SovInfo) then) =
      __$$_SovInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int date,
      String venue,
      String theme,
      int noFirstHalf,
      int noSecondHalf});
}

/// @nodoc
class __$$_SovInfoCopyWithImpl<$Res> extends _$SovInfoCopyWithImpl<$Res>
    implements _$$_SovInfoCopyWith<$Res> {
  __$$_SovInfoCopyWithImpl(_$_SovInfo _value, $Res Function(_$_SovInfo) _then)
      : super(_value, (v) => _then(v as _$_SovInfo));

  @override
  _$_SovInfo get _value => super._value as _$_SovInfo;

  @override
  $Res call({
    Object? date = freezed,
    Object? venue = freezed,
    Object? theme = freezed,
    Object? noFirstHalf = freezed,
    Object? noSecondHalf = freezed,
  }) {
    return _then(_$_SovInfo(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as String,
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String,
      noFirstHalf: noFirstHalf == freezed
          ? _value.noFirstHalf
          : noFirstHalf // ignore: cast_nullable_to_non_nullable
              as int,
      noSecondHalf: noSecondHalf == freezed
          ? _value.noSecondHalf
          : noSecondHalf // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SovInfo implements _SovInfo {
  const _$_SovInfo(
      {required this.date,
      required this.venue,
      required this.theme,
      required this.noFirstHalf,
      required this.noSecondHalf});

  factory _$_SovInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SovInfoFromJson(json);

  @override
  final int date;
  @override
  final String venue;
  @override
  final String theme;
  @override
  final int noFirstHalf;
  @override
  final int noSecondHalf;

  @override
  String toString() {
    return 'SovInfo(date: $date, venue: $venue, theme: $theme, noFirstHalf: $noFirstHalf, noSecondHalf: $noSecondHalf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SovInfo &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.venue, venue) &&
            const DeepCollectionEquality().equals(other.theme, theme) &&
            const DeepCollectionEquality()
                .equals(other.noFirstHalf, noFirstHalf) &&
            const DeepCollectionEquality()
                .equals(other.noSecondHalf, noSecondHalf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(venue),
      const DeepCollectionEquality().hash(theme),
      const DeepCollectionEquality().hash(noFirstHalf),
      const DeepCollectionEquality().hash(noSecondHalf));

  @JsonKey(ignore: true)
  @override
  _$$_SovInfoCopyWith<_$_SovInfo> get copyWith =>
      __$$_SovInfoCopyWithImpl<_$_SovInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SovInfoToJson(
      this,
    );
  }
}

abstract class _SovInfo implements SovInfo {
  const factory _SovInfo(
      {required final int date,
      required final String venue,
      required final String theme,
      required final int noFirstHalf,
      required final int noSecondHalf}) = _$_SovInfo;

  factory _SovInfo.fromJson(Map<String, dynamic> json) = _$_SovInfo.fromJson;

  @override
  int get date;
  @override
  String get venue;
  @override
  String get theme;
  @override
  int get noFirstHalf;
  @override
  int get noSecondHalf;
  @override
  @JsonKey(ignore: true)
  _$$_SovInfoCopyWith<_$_SovInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
