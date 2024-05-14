import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@unfreezed
class Resource with _$Resource {
  factory Resource({
    @Default('id') String id,
    @Default('name') String name,
    @Default('assets/placeholder_icon.png') String icon,
  }) = _Resource;
}

@riverpod
class Resources extends _$Resources {
  @override
  List<Resource> build() {
    return [
      Resource(id: 'oak_tree', name: 'Oak Tree'),
      Resource(id: 'gold_ore', name: 'Gold Ore'),
    ];
  }
}
