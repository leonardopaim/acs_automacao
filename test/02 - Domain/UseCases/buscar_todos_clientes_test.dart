
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar uma lista de clientes corretamente", (){
    final sut = BuscarTodosClientesUseCase();
    final clientes = sut();
    expect(clientes.length, 0);
  });
}