import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarTodosServicosUseCase {
  final ServicoRepository _servicoRepository;

  BuscarTodosServicosUseCase(this._servicoRepository);
  
  List<Servico> call(){
    final servicos = _servicoRepository.buscarTodos();
    
    return servicos;
  }
}