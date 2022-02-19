
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ProdutoRepository produtoRepository;

  setUp(() {
    produtoRepository = MockProdutoRepository();
  });

  test("Deve deletar o produto corretamente", (){
    const id = 1;
    final sut = DeletarProdutoUseCase(produtoRepository);

    sut(id);
    
    verify(() => produtoRepository.deletar(id)).called(1);
  });
}