import 'package:acs_automacao/03%20-%20Domain/Interfaces/orcamento_repository.dart';
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

  test("Deve atualizar o orçamento corretamente", () {
    final orcamento = OrcamentoBuilder.init.orcamentoDefault().build();
    final sut = AtualizarOrcamentoUseCase(orcamentoRepository);

    sut(orcamento);

    verify(() => orcamentoRepository.atualizar(orcamento)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para atualizar orçamento no repositório", () {
    final orcamento = OrcamentoBuilder.init.orcamentoDefault().build();
    final sut = AtualizarOrcamentoUseCase(orcamentoRepository);
    when(() => orcamentoRepository.atualizar(orcamento)).thenThrow(Exception());

    action() => sut(orcamento);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(orcamento)).called(1);
  });
}
