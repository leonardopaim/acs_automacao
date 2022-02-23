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

  test("Deve retornar um fornecedor corretamente", () {
    final fornecedorBuild = FornecedorBuilder.init.fornecedorDefault().build();
    const id = 1;
    final sut = BuscaFornecedorPorIdUseCase(fornecedorRepository);
    when(() => fornecedorRepository.buscarPorId(id))
        .thenReturn(fornecedorBuild);

    final fornecedor = sut(id);

    expect(fornecedor.id, fornecedorBuild.id);
    verify(() => sut(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar o fornecedor por id no repositório", (){
    final fornecedorBuild = FornecedorBuilder.init.fornecedorDefault().build();
    final id = fornecedorBuild.id;
    when(() => fornecedorRepository.buscarPorId(id)).thenThrow(Exception());
    final sut = BuscaFornecedorPorIdUseCase(fornecedorRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}
