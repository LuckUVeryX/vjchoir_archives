// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comm _$CommFromJson(Map<String, dynamic> json) {
  return _Comm.fromJson(json);
}

/// @nodoc
mixin _$Comm {
  String get name => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommCopyWith<Comm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommCopyWith<$Res> {
  factory $CommCopyWith(Comm value, $Res Function(Comm) then) =
      _$CommCopyWithImpl<$Res>;
  $Res call({String name, String img, List<String> members});
}

/// @nodoc
class _$CommCopyWithImpl<$Res> implements $CommCopyWith<$Res> {
  _$CommCopyWithImpl(this._value, this._then);

  final Comm _value;
  // ignore: unused_field
  final $Res Function(Comm) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? img = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_CommCopyWith<$Res> implements $CommCopyWith<$Res> {
  factory _$$_CommCopyWith(_$_Comm value, $Res Function(_$_Comm) then) =
      __$$_CommCopyWithImpl<$Res>;
  @override
  $Res call({String name, String img, List<String> members});
}

/// @nodoc
class __$$_CommCopyWithImpl<$Res> extends _$CommCopyWithImpl<$Res>
    implements _$$_CommCopyWith<$Res> {
  __$$_CommCopyWithImpl(_$_Comm _value, $Res Function(_$_Comm) _then)
      : super(_value, (v) => _then(v as _$_Comm));

  @override
  _$_Comm get _value => super._value as _$_Comm;

  @override
  $Res call({
    Object? name = freezed,
    Object? img = freezed,
    Object? members = freezed,
  }) {
    return _then(_$_Comm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comm implements _Comm {
  _$_Comm(
      {required this.name,
      required this.img,
      required final List<String> members})
      : _members = members;

  factory _$_Comm.fromJson(Map<String, dynamic> json) => _$$_CommFromJson(json);

  @override
  final String name;
  @override
  final String img;
  final List<String> _members;
  @override
  List<String> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'Comm(name: $name, img: $img, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comm &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  _$$_CommCopyWith<_$_Comm> get copyWith =>
      __$$_CommCopyWithImpl<_$_Comm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommToJson(
      this,
    );
  }
}

abstract class _Comm implements Comm {
  factory _Comm(
      {required final String name,
      required final String img,
      required final List<String> members}) = _$_Comm;

  factory _Comm.fromJson(Map<String, dynamic> json) = _$_Comm.fromJson;

  @override
  String get name;
  @override
  String get img;
  @override
  List<String> get members;
  @override
  @JsonKey(ignore: true)
  _$$_CommCopyWith<_$_Comm> get copyWith => throw _privateConstructorUsedError;
}
