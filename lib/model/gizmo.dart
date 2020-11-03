import 'package:flutter/foundation.dart';
import 'package:gizmos/enum/energy_type.dart';
import 'package:gizmos/enum/gizmo_type.dart';

class Gizmo {
  final GizmoType gizmoType;
  final EnergyType energyType;
  final int cost;
  final int victoryPoints;
  final String effect;

  Gizmo({
    @required this.gizmoType,
    @required this.energyType,
    @required this.cost,
    @required this.victoryPoints,
    @required this.effect,
  });
}
