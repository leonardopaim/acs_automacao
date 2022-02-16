
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve deletar o serviço corretamente", (){
    const id = 1;
    final sut = DeletarServicoUseCase();
    final deletou = sut(id);
    expect(deletou, true);
  });
}