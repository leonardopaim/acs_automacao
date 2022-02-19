
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

  test("Deve retornar um produto corretamente", (){
    final produtoBuild = ProdutoBuilder.init.produtoDefault().build();
    const id = 1;
    final sut = BuscaProdutoPorIdUseCase(produtoRepository);
    when(() => produtoRepository.buscarPorId(id)).thenReturn(produtoBuild);

    final produto = sut(id);
    
    expect(produto.id, produtoBuild.id);
    verify(() => produtoRepository.buscarPorId(id)).called(1);
  });
}