
import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
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

  test("Deve lançar uma exceção ao fazer a chamada para deletar o fornecedor no repositório", (){
    const id = 1;
    when(() => fornecedorRepository.deletar(id)).thenThrow(Exception());
    final sut = DeletarFornecedorUseCase(fornecedorRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}