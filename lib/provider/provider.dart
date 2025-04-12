import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gladiators/provider/model.dart';

/// Providers are declared globally and specify how to create a state
final counterProvider = StateNotifierProvider<SelectArmorNotifier, Interface?>((ref) => SelectArmorNotifier());

class SelectArmorNotifier extends StateNotifier<Interface?> {
    SelectArmorNotifier._() : super(null);
    static SelectArmorNotifier instance = SelectArmorNotifier._();
    factory SelectArmorNotifier() => instance;

    
}