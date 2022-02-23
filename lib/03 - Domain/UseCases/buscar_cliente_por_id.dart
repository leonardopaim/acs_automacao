import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscaClientePorIdUseCase {
  final ClienteRepository _clienteRepository;

  BuscaClientePorIdUseCase(this._clienteRepository);

  Cliente call(int id){
    final cliente = _clienteRepository.buscarPorId(id);

    return cliente;
  }
}