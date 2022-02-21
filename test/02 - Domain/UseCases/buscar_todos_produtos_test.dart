
import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';
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

  test("Deve retornar uma lista de produtos corretamente", (){
    final produto1 = ProdutoBuilder.init.id(1).build();
    final produto2 = ProdutoBuilder.init.id(2).build();
    final produtosBuild = <Produto>[produto1, produto2];
    when(() => produtoRepository.buscarTodos()).thenReturn(produtosBuild);
    final sut = BuscarTodosProdutosUseCase(produtoRepository);

    final produtos = sut();
    
    expect(produtos.length, produtosBuild.length);
    verify(() => produtoRepository.buscarTodos()).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar todos os produtos no repositório", (){
    when(() => produtoRepository.buscarTodos()).thenThrow(Exception());
    final sut = BuscarTodosProdutosUseCase(produtoRepository);

    action() =>  sut();

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut()).called(1);
  });
}