import '../Interfaces/_interfaces.dart';

class DeletarServicoUseCase {
  final ServicoRepository _servicoRepository;

  DeletarServicoUseCase(this._servicoRepository);
  
  bool call(int id){
    _servicoRepository.deletar(id);
    
    return true;
  }
}