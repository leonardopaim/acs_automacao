
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late OrcamentoRepository orcamentoRepository;

  setUp(() {
    orcamentoRepository = MockOrcamentoRepository();
  });

  test("Deve deletar o orçamento corretamente", (){
    const id = 1;
    final sut = DeletarOrcamentoUseCase(orcamentoRepository);

    sut(id);

    verify(() => orcamentoRepository.deletar(id)).called(1);
  });
}