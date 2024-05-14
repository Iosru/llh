import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'structure.freezed.dart';
part 'structure.g.dart';

@freezed
class Structure with _$Structure {
  factory Structure({
    @Default('id') String id,
    @Default('name') String name,
    @Default('assets/placeholder_icon.png') String icon,
    @Default(0) int cost,
    @Default(1) int limit,
  }) = _Structure;
}

@riverpod
class Structures extends _$Structures {
  @override
  List<Structure> build() {
    return [
      Structure(
          id: 'town_hall', name: 'Town Hall', icon: 'assets/Town_Hall16.webp'),
      Structure(
          id: 'gold_mine', name: 'Gold Mine', icon: 'assets/Gold_Mine16.webp'),
      Structure(
          id: 'gold_storage',
          name: 'Gold Storage',
          icon: 'assets/Gold_Storage17.webp'),
    ];
  }
}
