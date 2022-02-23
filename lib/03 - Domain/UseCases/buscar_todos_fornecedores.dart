import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarTodosFornecedoresUseCase {
  final FornecedorRepository _fornecedorRepository;

  BuscarTodosFornecedoresUseCase(this._fornecedorRepository);
  
  List<Fornecedor> call(){
    final fornecedores = _fornecedorRepository.buscarTodos();
    
    return fornecedores;
  }
}