
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

  test("Deve cadastrar o produto corretamente", (){
    final produto = ProdutoBuilder.init.produtoDefault().build();
    when(() => produtoRepository.cadastrar(produto)).thenReturn(produto.id);
    final sut = CadastrarProdutoUseCase(produtoRepository);

    final id = sut(produto);

    expect(id, produto.id);
    verify(() => produtoRepository.cadastrar(produto)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para cadastrar produto no repositório", () {
    final produto = ProdutoBuilder.init.produtoDefault().build();
    final sut = CadastrarProdutoUseCase(produtoRepository);
    when(() => produtoRepository.cadastrar(produto)).thenThrow(Exception());

    action() => sut(produto);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(produto)).called(1);
  });
}