
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar uma lista de orçamentos corretamente", (){
    final sut = BuscarTodosOrcamentosUseCase();
    final orcamentos = sut();
    expect(orcamentos.length, 0);
  });
}