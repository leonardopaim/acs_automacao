
import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/servico_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ServicoRepository servicoRepository;

  setUp(() {
    servicoRepository = MockServicoRepository();
  });

  test("Deve retornar uma lista de serviços corretamente", (){
    final servico1 = ServicoBuilder.init.id(1).build();
    final servico2 = ServicoBuilder.init.id(2).build();
    final servicosBuild = <Servico>[servico1, servico2];
    when(() => servicoRepository.buscarTodos()).thenReturn(servicosBuild);
    final sut = BuscarTodosServicosUseCase(servicoRepository);

    final servicos = sut();

    expect(servicos.length, servicosBuild.length);
    verify(() => servicoRepository.buscarTodos()).called(1);
  });
}