// ignore_for_file: use_key_in_widget_constructors

import 'package:acs_automacao/01%20-%20UI/Components/app_theme.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '01 - UI/Pages/_pages.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final titulo = 'ACS Automação Industrial';

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: makeTheme(),
      home: HomePage(),
    );
  }
}
