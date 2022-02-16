
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve deletar o orçamento corretamente", (){
    const id = 1;
    final sut = DeletarOrcamentoUseCase();
    final deletou = sut(id);
    expect(deletou, true);
  });
}