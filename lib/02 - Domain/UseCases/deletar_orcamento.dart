import '../Interfaces/_interfaces.dart';

class DeletarOrcamentoUseCase {
  final OrcamentoRepository _orcamentoRepository;

  DeletarOrcamentoUseCase(this._orcamentoRepository);
  
  bool call(int id){
    _orcamentoRepository.deletar(id);
    
    return true;
  }
}