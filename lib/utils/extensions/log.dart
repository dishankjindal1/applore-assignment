import 'dart:developer' as dev;

extension PrintLog on String {
  void log() {
    dev.log(this);
  }
}