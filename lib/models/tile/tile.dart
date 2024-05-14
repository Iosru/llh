import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tile.freezed.dart';
part 'tile.g.dart';

@freezed
class Tile with _$Tile {
  factory Tile({
    @Default(0) int x,
    @Default(0) int y,
    @Default(Offset(0, 0)) Offset position,
  }) = _Tile;
}

@riverpod
class Tiles extends _$Tiles {
  @override
  List<Tile> build() {
    return [
      Tile(),
    ];
  }
}
