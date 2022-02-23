import '../Interfaces/_interfaces.dart';

class DeletarFornecedorUseCase {
  final FornecedorRepository _fornecedorRepository;

  DeletarFornecedorUseCase(this._fornecedorRepository);
  
  void call(int id){
    _fornecedorRepository.deletar(id);
  }
}