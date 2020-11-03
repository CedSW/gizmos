import 'package:flutter/material.dart';
import 'package:gizmos/enum/energy_type.dart';
import 'package:gizmos/service/picker_service.dart';
import 'package:gizmos/service/service_locator.dart';
import 'package:gizmos/widget/energy_marble_widget.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PickerService pickerService = locator<PickerService>();
    return Container(
      child: Row(
        children: pickerService.availableEnergyForPick.map((EnergyType energyType) => EnergyMarbleWidget(energyType: energyType,)).toList(),
      ),
    );
  }
}
