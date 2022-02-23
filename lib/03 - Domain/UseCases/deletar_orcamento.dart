import '../Interfaces/_interfaces.dart';

class DeletarOrcamentoUseCase {
  final OrcamentoRepository _orcamentoRepository;

  DeletarOrcamentoUseCase(this._orcamentoRepository);
  
  void call(int id){
    _orcamentoRepository.deletar(id);
  }
}