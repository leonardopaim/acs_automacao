import '../Entities/_entities.dart';

abstract class FornecedorRepository {
  void cadastrar(Fornecedor cliente);
  void atualizar(Fornecedor cliente);
  void deletar(int id);
  Fornecedor buscarPorId(int id);
  List<Fornecedor> buscarTodos();
}