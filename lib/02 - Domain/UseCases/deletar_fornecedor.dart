import '../Interfaces/_interfaces.dart';

class DeletarFornecedorUseCase {
  final FornecedorRepository _fornecedorRepository;

  DeletarFornecedorUseCase(this._fornecedorRepository);
  
  bool call(int id){
    _fornecedorRepository.deletar(id);
    
    return true;
  }
}