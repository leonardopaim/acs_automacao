import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarOrcamentoPorIdUseCase {
  final OrcamentoRepository _orcamentoRepository;

  BuscarOrcamentoPorIdUseCase(this._orcamentoRepository);
  
  Orcamento call(int id){
    final orcamento = _orcamentoRepository.buscarPorId(id);

    return orcamento;
  }
}