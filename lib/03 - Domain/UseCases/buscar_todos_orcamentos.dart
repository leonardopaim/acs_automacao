import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarTodosOrcamentosUseCase {
  final OrcamentoRepository _orcamentoRepository;

  BuscarTodosOrcamentosUseCase(this._orcamentoRepository);
  
  List<Orcamento> call(){
    final orcamentos = _orcamentoRepository.buscarTodos();
    
    return orcamentos;
  }
}