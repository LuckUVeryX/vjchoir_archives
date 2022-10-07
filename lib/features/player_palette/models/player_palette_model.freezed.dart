// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_palette_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerPaletteModel _$PlayerPaletteModelFromJson(Map<String, dynamic> json) {
  return _PlayerPaletteModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerPaletteModel {
  String get id => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  int get textColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerPaletteModelCopyWith<PlayerPaletteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerPaletteModelCopyWith<$Res> {
  factory $PlayerPaletteModelCopyWith(
          PlayerPaletteModel value, $Res Function(PlayerPaletteModel) then) =
      _$PlayerPaletteModelCopyWithImpl<$Res>;
  $Res call({String id, int color, int textColor});
}

/// @nodoc
class _$PlayerPaletteModelCopyWithImpl<$Res>
    implements $PlayerPaletteModelCopyWith<$Res> {
  _$PlayerPaletteModelCopyWithImpl(this._value, this._then);

  final PlayerPaletteModel _value;
  // ignore: unused_field
  final $Res Function(PlayerPaletteModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? textColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerPaletteModelCopyWith<$Res>
    implements $PlayerPaletteModelCopyWith<$Res> {
  factory _$$_PlayerPaletteModelCopyWith(_$_PlayerPaletteModel value,
          $Res Function(_$_PlayerPaletteModel) then) =
      __$$_PlayerPaletteModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, int color, int textColor});
}

/// @nodoc
class __$$_PlayerPaletteModelCopyWithImpl<$Res>
    extends _$PlayerPaletteModelCopyWithImpl<$Res>
    implements _$$_PlayerPaletteModelCopyWith<$Res> {
  __$$_PlayerPaletteModelCopyWithImpl(
      _$_PlayerPaletteModel _value, $Res Function(_$_PlayerPaletteModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerPaletteModel));

  @override
  _$_PlayerPaletteModel get _value => super._value as _$_PlayerPaletteModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? textColor = freezed,
  }) {
    return _then(_$_PlayerPaletteModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerPaletteModel implements _PlayerPaletteModel {
  const _$_PlayerPaletteModel(
      {required this.id, required this.color, required this.textColor});

  factory _$_PlayerPaletteModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerPaletteModelFromJson(json);

  @override
  final String id;
  @override
  final int color;
  @override
  final int textColor;

  @override
  String toString() {
    return 'PlayerPaletteModel(id: $id, color: $color, textColor: $textColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerPaletteModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.textColor, textColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(textColor));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerPaletteModelCopyWith<_$_PlayerPaletteModel> get copyWith =>
      __$$_PlayerPaletteModelCopyWithImpl<_$_PlayerPaletteModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerPaletteModelToJson(
      this,
    );
  }
}

abstract class _PlayerPaletteModel implements PlayerPaletteModel {
  const factory _PlayerPaletteModel(
      {required final String id,
      required final int color,
      required final int textColor}) = _$_PlayerPaletteModel;

  factory _PlayerPaletteModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerPaletteModel.fromJson;

  @override
  String get id;
  @override
  int get color;
  @override
  int get textColor;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerPaletteModelCopyWith<_$_PlayerPaletteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
