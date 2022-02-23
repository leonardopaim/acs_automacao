
import 'package:acs_automacao/03%20-%20Domain/Entities/_entities.dart';
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
  
  test("Deve retornar uma lista de fornecedores corretamente", (){
    final fornecedor1 = FornecedorBuilder.init.id(1).build();
    final fornecedor2 = FornecedorBuilder.init.id(2).build();
    final fornecedoresBuild = <Fornecedor>[fornecedor1, fornecedor2];
    when(() => fornecedorRepository.buscarTodos()).thenReturn(fornecedoresBuild);
    final sut = BuscarTodosFornecedoresUseCase(fornecedorRepository);

    final fornecedores = sut();
    
    expect(fornecedores.length, fornecedoresBuild.length);
    verify(() => sut()).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar todos os fornecedores no repositório", (){
    when(() => fornecedorRepository.buscarTodos()).thenThrow(Exception());
    final sut = BuscarTodosFornecedoresUseCase(fornecedorRepository);

    action() =>  sut();

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut()).called(1);
  });
}