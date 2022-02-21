
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

  test("Deve retornar um serviço corretamente", (){
    final servicoBuild = ServicoBuilder.init.servicoDefault().build();
    const id = 1;
    final sut = BuscaServicoPorIdUseCase(servicoRepository);
    when(() => servicoRepository.buscarPorId(id)).thenReturn(servicoBuild);

    final servico = sut(id);
    
    expect(servico.id, servicoBuild.id);
    verify(() => servicoRepository.buscarPorId(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar o serviço por id no repositório", (){
    final servicoBuild = ServicoBuilder.init.servicoDefault().build();
    final id = servicoBuild.id;
    when(() => servicoRepository.buscarPorId(id)).thenThrow(Exception());
    final sut = BuscaServicoPorIdUseCase(servicoRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}