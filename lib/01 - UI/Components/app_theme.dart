import 'package:fluent_ui/fluent_ui.dart';

ThemeData makeTheme() {
  const buttonTheme = ButtonThemeData();

  return ThemeData(
    accentColor: Colors.blue,
    buttonTheme: buttonTheme,
  );
}
