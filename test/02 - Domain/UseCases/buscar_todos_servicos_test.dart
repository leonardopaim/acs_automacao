
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar uma lista de serviços corretamente", (){
    final sut = BuscarTodosServicosUseCase();
    final servicos = sut();
    expect(servicos.length, 0);
  });
}