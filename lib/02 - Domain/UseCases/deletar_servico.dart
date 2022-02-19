import '../Interfaces/_interfaces.dart';

class DeletarServicoUseCase {
  final ServicoRepository _servicoRepository;

  DeletarServicoUseCase(this._servicoRepository);
  
  void call(int id){
    _servicoRepository.deletar(id);
  }
}