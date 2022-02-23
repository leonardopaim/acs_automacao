// ignore_for_file: use_key_in_widget_constructors

import 'package:fluent_ui/fluent_ui.dart';

import '02 - Presenter/Pages/_pages.dart';

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
      theme: ThemeData(accentColor: Colors.blue),
      home: HomePage(),
    );
  }
}
