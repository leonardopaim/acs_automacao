import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class CadastrarServicoUseCase {
  final ServicoRepository _servicoRepository;

  CadastrarServicoUseCase(this._servicoRepository);
  
  int call(Servico servico){
    final id = _servicoRepository.cadastrar(servico);

    return id;
  }
}