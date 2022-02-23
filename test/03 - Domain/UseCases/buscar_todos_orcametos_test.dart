
import 'package:acs_automacao/03%20-%20Domain/Entities/_entities.dart';
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

  test("Deve retornar uma lista de orçamentos corretamente", (){
    final orcamento1 = OrcamentoBuilder.init.id(1).build();
    final orcamento2 = OrcamentoBuilder.init.id(2).build();
    final orcamentosBuild = <Orcamento>[orcamento1, orcamento2];
    when(() => orcamentoRepository.buscarTodos()).thenReturn(orcamentosBuild);
    final sut = BuscarTodosOrcamentosUseCase(orcamentoRepository);

    final orcamentos = sut();

    expect(orcamentos.length, orcamentosBuild.length);
    verify(() => orcamentoRepository.buscarTodos()).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar todos os orçamentos no repositório", (){
    when(() => orcamentoRepository.buscarTodos()).thenThrow(Exception());
    final sut = BuscarTodosOrcamentosUseCase(orcamentoRepository);

    action() =>  sut();

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut()).called(1);
  });
}