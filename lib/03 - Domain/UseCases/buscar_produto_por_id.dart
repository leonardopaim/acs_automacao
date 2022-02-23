import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscaProdutoPorIdUseCase {
  final ProdutoRepository _produtoRepository;

  BuscaProdutoPorIdUseCase(this._produtoRepository);
  
  Produto call(int id){
    final produto = _produtoRepository.buscarPorId(id);

    return produto;
  }
}