import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarOrcamentoUseCase {
  final OrcamentoRepository _orcamentoRepository;

  AtualizarOrcamentoUseCase(this._orcamentoRepository);

  bool call(Orcamento orcamento){
    _orcamentoRepository.atualizar(orcamento);

    return true;
  }
}