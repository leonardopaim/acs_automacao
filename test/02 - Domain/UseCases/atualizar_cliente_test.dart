
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve atualizar o cliente corretamente", (){
    final sut = AtualizarClienteUseCase();
    final atualizou = sut();
    expect(atualizou, true);
  });
}