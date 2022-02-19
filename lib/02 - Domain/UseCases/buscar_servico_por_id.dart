import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscaServicoPorIdUseCase {
  final ServicoRepository _servicoRepository;

  BuscaServicoPorIdUseCase(this._servicoRepository);
  
  Servico call(int id){
    final servico = _servicoRepository.buscarPorId(id);
    
    return servico;
  }
}