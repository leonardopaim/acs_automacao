import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarProdutoUseCase {
  final ProdutoRepository _produtoRepository;

  AtualizarProdutoUseCase(this._produtoRepository);

  bool call(Produto produto) {
    _produtoRepository.atualizar(produto);

    return true;
  }
}
