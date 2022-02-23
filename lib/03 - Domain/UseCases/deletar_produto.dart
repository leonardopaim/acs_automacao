import '../Interfaces/_interfaces.dart';

class DeletarProdutoUseCase {
  final ProdutoRepository _produtoRepository;

  DeletarProdutoUseCase(this._produtoRepository);
  
  void call(int id){
    _produtoRepository.deletar(id);
  }
}