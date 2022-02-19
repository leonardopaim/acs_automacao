import '../Entities/_entities.dart';

abstract class FornecedorRepository {
  int cadastrar(Fornecedor fornecedor);
  void atualizar(Fornecedor fornecedor);
  void deletar(int id);
  Fornecedor buscarPorId(int id);
  List<Fornecedor> buscarTodos();
}