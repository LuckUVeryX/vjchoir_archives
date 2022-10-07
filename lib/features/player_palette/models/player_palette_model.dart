import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_palette_model.freezed.dart';
part 'player_palette_model.g.dart';

@freezed
class PlayerPaletteModel with _$PlayerPaletteModel {
  const factory PlayerPaletteModel({
    required String id,
    required int color,
    required int textColor,
  }) = _PlayerPaletteModel;

  factory PlayerPaletteModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerPaletteModelFromJson(json);

  factory PlayerPaletteModel.initial({required bool darkMode}) {
    return PlayerPaletteModel(
      id: '',
      color: darkMode ? Colors.black.value : Colors.white.value,
      textColor: darkMode ? Colors.white.value : Colors.black.value,
    );
  }
}
