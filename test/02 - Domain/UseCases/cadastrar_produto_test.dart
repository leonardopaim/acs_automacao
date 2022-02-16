
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve cadastrar o produto corretamente", (){
    final sut = CadastrarProdutoUseCase();
    final id = sut();
    expect(id, 0);
  });
}