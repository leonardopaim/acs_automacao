import '../Entities/_entities.dart';

abstract class ClienteRepository {
  void cadastrar(Cliente cliente);
  void atualizar(Cliente cliente);
  void deletar(int id);
  Cliente buscarPorId(int id);
  List<Cliente> buscarTodos();
}