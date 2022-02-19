import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class CriarOrcamentoUseCase {
  final OrcamentoRepository _orcamentoRepository;

  CriarOrcamentoUseCase(this._orcamentoRepository);
  
  bool call(Orcamento orcamento){
    _orcamentoRepository.criar(orcamento);

    return true;
  }
}