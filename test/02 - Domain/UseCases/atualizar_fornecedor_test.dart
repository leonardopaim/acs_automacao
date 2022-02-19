import 'package:acs_automacao/02%20-%20Domain/Interfaces/fornecedor_repository.dart';
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

  test("Deve atualizar o fornecedor corretamente", () {
    final fornecedor = FornecedorBuilder.init.fornecedorDefault().build();
    final sut = AtualizarFornecedorUseCase(fornecedorRepository);

    sut(fornecedor);

    verify(() => fornecedorRepository.atualizar(fornecedor)).called(1);
  });
}
