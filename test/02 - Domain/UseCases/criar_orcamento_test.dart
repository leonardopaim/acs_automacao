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

  test("Deve criar o orçamento corretamente", () {
    final orcamento = OrcamentoBuilder.init.orcamentoDefault().build();
    final sut = CriarOrcamentoUseCase(orcamentoRepository);
    when(() => orcamentoRepository.criar(orcamento)).thenReturn(orcamento.id);

    sut(orcamento);

    verify(() => orcamentoRepository.criar(orcamento)).called(1);
  });
}
