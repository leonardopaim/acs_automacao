
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

  test("Deve cadastrar o serviço corretamente", (){
    final servico = ServicoBuilder.init.servicoDefault().build();
    when(() => servicoRepository.cadastrar(servico)).thenReturn(servico.id);
    final sut = CadastrarServicoUseCase(servicoRepository);

    final id = sut(servico);

    expect(id, servico.id);
    verify(() => servicoRepository.cadastrar(servico)).called(1);
  });
}