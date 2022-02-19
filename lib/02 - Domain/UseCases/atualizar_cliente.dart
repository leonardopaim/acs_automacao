import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarClienteUseCase {
  final ClienteRepository _clienteRepository;

  AtualizarClienteUseCase(this._clienteRepository);

  bool call(Cliente cliente) {
    _clienteRepository.atualizar(cliente);

    return true;
  }
}
