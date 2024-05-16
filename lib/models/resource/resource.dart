import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@unfreezed
class Resource with _$Resource {
  factory Resource({
    @Default('id') String id,
    @Default('name') String name,
    @Default('') String description,
    @Default(Rarity.Common) Rarity rarity,
    @Default('assets/placeholder_icon.png') String icon,
    @Default(100.0) double amount,
    @Default(100.0) double capacity,
    @Default(0.01) double replenishRate,
  }) = _Resource;
}

@riverpod
class Resources extends _$Resources {
  @override
  List<Resource> build() {
    return [
      Resource(
          id: 'gold_ore',
          name: 'Gold Ore',
          description:
              'A vein of golden ore. It may prove useful once processed.',
          icon: 'assets/gold_ore.png'),
      Resource(id: 'oak_tree', name: 'Oak Tree'),
    ];
  }
}

enum Rarity { Common, Mythical }
