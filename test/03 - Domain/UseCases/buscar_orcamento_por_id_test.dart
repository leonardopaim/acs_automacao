
import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/orcamento_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late OrcamentoRepository orcamentoRepository;

  setUp(() {
    orcamentoRepository = MockOrcamentoRepository();
  });

  test("Deve retornar um orçamento corretamente", (){
    final orcamentoBuild = OrcamentoBuilder.init.orcamentoDefault().build();
    const id = 1;
    final sut = BuscarOrcamentoPorIdUseCase(orcamentoRepository);
    when(() => orcamentoRepository.buscarPorId(id)).thenReturn(orcamentoBuild);

    final orcamento = sut(id);
    
    expect(orcamento.id, orcamentoBuild.id);
    verify(() => orcamentoRepository.buscarPorId(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar o orçamento por id no repositório", (){
    final orcamentoBuild = OrcamentoBuilder.init.orcamentoDefault().build();
    final id = orcamentoBuild.id;
    when(() => orcamentoRepository.buscarPorId(id)).thenThrow(Exception());
    final sut = BuscarOrcamentoPorIdUseCase(orcamentoRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}