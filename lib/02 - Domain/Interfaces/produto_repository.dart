import '../Entities/_entities.dart';

abstract class ProdutoRepository {
  void cadastrar(Produto produto);
  void atualizar(Produto produto);
  void deletar(int id);
  Produto buscarPorId(int id);
  List<Produto> buscarTodos();
}