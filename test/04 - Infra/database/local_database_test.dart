
import 'package:acs_automacao/04%20-%20Infra/_infra.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar true se o caminho contiver o nome da dll do sqlite3", (){
    final sut = LocalDatabase();
    final nome = sut.caminhoDllSqlite3();
    expect(nome.contains("sqlite3.dll"), true);
  });
}