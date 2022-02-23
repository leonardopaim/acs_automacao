import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/servico_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ServicoRepository servicoRepository;

  setUp(() {
    servicoRepository = MockServicoRepository();
  });

  test("Deve atualizar o serviço corretamente", () {
    final servico = ServicoBuilder.init.servicoDefault().build();
    final sut = AtualizarServicoUseCase(servicoRepository);

    sut(servico);

    verify(() => servicoRepository.atualizar(servico)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para atualizar serviço no repositório", () {
    final servico = ServicoBuilder.init.servicoDefault().build();
    final sut = AtualizarServicoUseCase(servicoRepository);
    when(() => servicoRepository.atualizar(servico)).thenThrow(Exception());

    action() => sut(servico);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(servico)).called(1);
  });
}
