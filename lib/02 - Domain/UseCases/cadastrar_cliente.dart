import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class CadastrarClienteUseCase {
  final ClienteRepository _clienteRepository;

  CadastrarClienteUseCase(this._clienteRepository);
  
  int call(Cliente cliente){
    final id = _clienteRepository.cadastrar(cliente);

    return id;
  }
}