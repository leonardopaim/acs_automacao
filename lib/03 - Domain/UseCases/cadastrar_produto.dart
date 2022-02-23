import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class CadastrarProdutoUseCase {
  final ProdutoRepository _produtoRepository;

  CadastrarProdutoUseCase(this._produtoRepository);
  
  int call(Produto produto){
    final id = _produtoRepository.cadastrar(produto);

    return id;
  }
}