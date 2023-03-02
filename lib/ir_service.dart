

import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:tv_remote/ir_patterns.dart';
import 'package:vibration/vibration.dart';

class IrService {
  IrService();



  _emit({required String pattern}) async {
    buzz();
    await IrSensorPlugin.transmitString(pattern: pattern);
  }

  void buzz() {
    Vibration.vibrate(duration: 80);
  }

  void power() async {
    _emit(pattern: LgSignalCodes.turnOnOff);
  }

  void source() async {
    _emit(pattern: LgSignalCodes.back);
  }

  void menu() async {
    _emit(pattern: LgSignalCodes.info);
  }

  void arrowUp() async {
    _emit(pattern: LgSignalCodes.navigateUp);
  }

  void arrowDown() async {
    _emit(pattern: LgSignalCodes.navigateDown);
  }

  void arrowLeft() async {
    _emit(pattern: LgSignalCodes.navigateLeft);
  }

  void arrowRight() async {
    _emit(pattern: LgSignalCodes.navigateRight);
  }

  void btnOk() async {
    _emit(pattern: LgSignalCodes.ok);
  }

  void btnHome() async {
    _emit(pattern: LgSignalCodes.home);
  }

  void btnBack() async {
    _emit(pattern: LgSignalCodes.back);
  }

  void channelUp() async {
    _emit(pattern: LgSignalCodes.channelUp);
  }

  void channelDown() async {
    _emit(pattern: LgSignalCodes.channelDown);
  }

  void volUp() async {
    _emit(pattern: LgSignalCodes.volumeUp);
  }

  void volDown() async {
    _emit(pattern: LgSignalCodes.volumeDown);
  }
}
