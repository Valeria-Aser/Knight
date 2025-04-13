import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gladiators/provider/model.dart';

class TabInventory extends StateNotifier<String> {
  TabInventory() : super('armor');

  Map<String, String> tabs = {
    "armor": "Броня",
    "weapons": "Оружите",
    "shields": "Щиты",
  };

  void setTab(String tab) {
    if (state != tab) {
      state = tab;
    }
  }
}

final tabInventoryProvider = StateNotifierProvider<TabInventory, String>(
  (ref) => TabInventory(),
);

final inventoryProvider =
    StateNotifierProvider<SelectArmorNotifier, Interface?>(
      (ref) => SelectArmorNotifier(),
    );

class SelectArmorNotifier extends StateNotifier<Interface?> {
  SelectArmorNotifier._() : super(null);
  static SelectArmorNotifier instance = SelectArmorNotifier._();
  factory SelectArmorNotifier() => instance;

  Future<void> getInventory() async {
    state = Interface.fromJson(
      jsonDecode(await rootBundle.loadString('lib/data/data.json')),
    );
  }
}
