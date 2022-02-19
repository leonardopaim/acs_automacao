import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarClienteUseCase {
  final ClienteRepository _clienteRepository;

  AtualizarClienteUseCase(this._clienteRepository);

  void call(Cliente cliente) {
    _clienteRepository.atualizar(cliente);
  }
}
