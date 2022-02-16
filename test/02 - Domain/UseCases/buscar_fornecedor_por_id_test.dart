
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar um fornecedor corretamente", (){
    const id = 1;
    final sut = BuscaFornecedorPorIdUseCase();
    final fornecedor = sut(id);
    expect(fornecedor.id, 0);
  });
}