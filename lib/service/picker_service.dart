import 'package:gizmos/enum/energy_type.dart';

class PickerService {
  List<EnergyType> _energyPool;

  PickerService() {
    _energyPool = List<EnergyType>.generate(52, (int index) => _initEnergyPool(index));
    _energyPool.shuffle();
  }

  List<EnergyType> get availableEnergyForPick => _energyPool.sublist(0, 6);

  EnergyType _initEnergyPool(int index) {
    if (index < 13) {
      return EnergyType.ATOMIC;
    } else if (index < 25) {
      return EnergyType.BATTERY;
    } else if (index < 38) {
      return EnergyType.ELECTRIC;
    } else {
      return EnergyType.HEAT;
    }
  }

  void pickEnergy(int index){
    _energyPool.removeAt(index);
  }

  

  void returnEnergy(){}
}
