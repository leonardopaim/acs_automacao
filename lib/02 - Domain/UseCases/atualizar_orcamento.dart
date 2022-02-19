import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarOrcamentoUseCase {
  final OrcamentoRepository _orcamentoRepository;

  AtualizarOrcamentoUseCase(this._orcamentoRepository);

  void call(Orcamento orcamento){
    _orcamentoRepository.atualizar(orcamento);
  }
}