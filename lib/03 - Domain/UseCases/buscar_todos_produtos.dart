import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarTodosProdutosUseCase {
  final ProdutoRepository _produtoRepository;

  BuscarTodosProdutosUseCase(this._produtoRepository);
  
  List<Produto> call(){
    final produtos = _produtoRepository.buscarTodos();
    
    return produtos;
  }
}