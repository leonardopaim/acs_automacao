
import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/fornecedor_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late FornecedorRepository fornecedorRepository;

  setUp(() {
    fornecedorRepository = MockFornecedorRepository();
  });
  
  test("Deve cadastrar o fornecedor corretamente", (){
    final fornecedorBuild = FornecedorBuilder.init.fornecedorDefault().build();
    when(() => fornecedorRepository.cadastrar(fornecedorBuild)).thenReturn(fornecedorBuild.id);
    final sut = CadastrarFornecedorUseCase(fornecedorRepository);

    final id = sut(fornecedorBuild);
    
    expect(id, fornecedorBuild.id);
    verify(() => sut(fornecedorBuild)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para cadastrar fornecedor no repositório", () {
    final fornecedor = FornecedorBuilder.init.fornecedorDefault().build();
    final sut = CadastrarFornecedorUseCase(fornecedorRepository);
    when(() => fornecedorRepository.cadastrar(fornecedor)).thenThrow(Exception());

    action() => sut(fornecedor);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(fornecedor)).called(1);
  });
}