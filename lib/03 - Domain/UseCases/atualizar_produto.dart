import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarProdutoUseCase {
  final ProdutoRepository _produtoRepository;

  AtualizarProdutoUseCase(this._produtoRepository);

  void call(Produto produto) {
    _produtoRepository.atualizar(produto);
  }
}
