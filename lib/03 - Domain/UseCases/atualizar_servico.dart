import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarServicoUseCase {
  final ServicoRepository _servicoRepository;

  AtualizarServicoUseCase(this._servicoRepository);

  void call(Servico servico) {
    _servicoRepository.atualizar(servico);
  }
}
