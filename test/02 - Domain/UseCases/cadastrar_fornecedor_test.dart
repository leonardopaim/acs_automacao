
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
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
}