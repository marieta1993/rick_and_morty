enum AppThemeMode {
  light,
  dark;

  String get storageValue => name;

  static AppThemeMode fromString(String? value) {
    switch (value) {
      case 'dark':
        return AppThemeMode.dark;
      case 'light':
      default:
        return AppThemeMode.light;
    }
  }
}

