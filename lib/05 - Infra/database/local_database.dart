import 'dart:ffi';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqlite3/open.dart';

import '../_infra.dart';

class LocalDatabase implements ILocalDatabase {
  @override
  void carregarDllSqlite() {
    open.overrideFor(OperatingSystem.windows, () {
      final dll = caminhoDllSqlite3();
      return DynamicLibrary.open(dll);
    });
  }

  @override
  String caminhoDllSqlite3() {
    final caminho = File(Platform.script.toFilePath()).parent.path;
    final dll = join(caminho, "assets", "dll", "sqlite3.dll");
    return dll;
  }
}
