import '../Interfaces/_interfaces.dart';

class DeletarProdutoUseCase {
  final ProdutoRepository _produtoRepository;

  DeletarProdutoUseCase(this._produtoRepository);
  
  bool call(int id){
    _produtoRepository.deletar(id);
    
    return true;
  }
}