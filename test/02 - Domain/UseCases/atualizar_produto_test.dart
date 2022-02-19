import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/produto_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ProdutoRepository produtoRepository;

  setUp(() {
    produtoRepository = MockProdutoRepository();
  });

  test("Deve atualizar o produto corretamente", () {
    final produto = ProdutoBuilder.init.produtoDefault().build();
    final sut = AtualizarProdutoUseCase(produtoRepository);

    sut(produto);

    verify(() => produtoRepository.atualizar(produto)).called(1);
  });
}
