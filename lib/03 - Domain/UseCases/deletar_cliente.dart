import '../Interfaces/_interfaces.dart';

class DeletarClienteUseCase {
  final ClienteRepository _clienteRepository;

  DeletarClienteUseCase(this._clienteRepository);

  void call(int id){
    _clienteRepository.deletar(id);
  }
}