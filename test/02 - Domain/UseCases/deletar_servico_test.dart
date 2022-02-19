
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ServicoRepository servicoRepository;

  setUp(() {
    servicoRepository = MockServicoRepository();
  });

  test("Deve deletar o serviço corretamente", (){
    const id = 1;
    final sut = DeletarServicoUseCase(servicoRepository);

    sut(id);
    
    verify(() => servicoRepository.deletar(id)).called(1);
  });
}