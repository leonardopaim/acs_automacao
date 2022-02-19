import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarServicoUseCase {
  final ServicoRepository _servicoRepository;

  AtualizarServicoUseCase(this._servicoRepository);

  bool call(Servico servico) {
    _servicoRepository.atualizar(servico);

    return true;
  }
}
