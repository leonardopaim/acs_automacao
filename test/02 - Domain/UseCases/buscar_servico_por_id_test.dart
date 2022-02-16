
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar um serviço corretamente", (){
    const id = 1;
    final sut = BuscaServicoPorIdUseCase();
    final servico = sut(id);
    expect(servico.id, 0);
  });
}