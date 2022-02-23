
import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late OrcamentoRepository orcamentoRepository;

  setUp(() {
    orcamentoRepository = MockOrcamentoRepository();
  });

  test("Deve deletar o orçamento corretamente", (){
    const id = 1;
    final sut = DeletarOrcamentoUseCase(orcamentoRepository);

    sut(id);

    verify(() => orcamentoRepository.deletar(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para deletar o orçamento no repositório", (){
    const id = 1;
    when(() => orcamentoRepository.deletar(id)).thenThrow(Exception());
    final sut = DeletarOrcamentoUseCase(orcamentoRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}