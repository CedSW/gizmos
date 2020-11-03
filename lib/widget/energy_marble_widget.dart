import 'package:flutter/material.dart';
import 'package:gizmos/enum/energy_type.dart';

class EnergyMarbleWidget extends StatelessWidget {
  final EnergyType _energyType;

  const EnergyMarbleWidget({Key key, EnergyType energyType})
      : _energyType = energyType,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      color: _getColor(_energyType),
      child: const SizedBox(height: 20.0, width: 20.0,),
    );
  }

  Color _getColor(EnergyType energyType) {
    switch (energyType) {
      case EnergyType.HEAT:
        return Colors.red;
      case EnergyType.BATTERY:
        return Colors.black;
      case EnergyType.ELECTRIC:
        return Colors.yellow;
      case EnergyType.ATOMIC:
        return Colors.blue;
    }
  }
}
