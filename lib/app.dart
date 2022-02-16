// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:fluent_ui/fluent_ui.dart';

import '01 - Presentation/Pages/_pages.dart';

class App extends StatelessWidget {
  final titulo = 'ACS Automação Industrial';

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(accentColor: Colors.blue),
      home: HomePage(),
    );
  }
}
