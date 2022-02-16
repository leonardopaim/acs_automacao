
import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve criar o orçamento corretamente", (){
    final sut = CriarOrcamentoUseCase();
    final orcamento = Orcamento();
    final criou = sut(orcamento);
    expect(criou, true);
  });
}