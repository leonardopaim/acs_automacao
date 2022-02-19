
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late FornecedorRepository fornecedorRepository;

  setUp(() {
    fornecedorRepository = MockFornecedorRepository();
  });
  
  test("Deve deletar o fornecedor corretamente", (){
    const id = 1;
    final sut = DeletarFornecedorUseCase(fornecedorRepository);

    sut(id);

    verify(() => fornecedorRepository.deletar(id)).called(1);
  });
}