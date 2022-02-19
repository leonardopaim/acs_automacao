
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
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
}