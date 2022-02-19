import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscarTodosClientesUseCase {
  final ClienteRepository _clienteRepository;

  BuscarTodosClientesUseCase(this._clienteRepository);

  List<Cliente> call(){
    final clientes = _clienteRepository.buscarTodos();
    
    return clientes;
  }
}