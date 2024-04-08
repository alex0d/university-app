import 'dart:io';

/// That is true if the application run on the aurora.
bool get isAurora => _isAurora;

/// Private value if the application run on the aurora.
bool _isAurora = _checkIsAurora();

/// Check is platform Aurora OS
bool _checkIsAurora() {
  if (Platform.isLinux) {
    try {
      return File('/etc/os-release').readAsLinesSync().contains('ID=auroraos');
    } catch (e) {
      return false;
    }
  }
  return false;
}
