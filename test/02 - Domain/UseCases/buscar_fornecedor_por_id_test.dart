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
}
