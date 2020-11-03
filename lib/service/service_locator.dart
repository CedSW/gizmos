import 'package:get_it/get_it.dart';
import 'package:gizmos/service/picker_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocators() async {
  locator.registerSingleton<PickerService>(PickerService());
}
