import '../Entities/_entities.dart';

abstract class OrcamentoRepository {
  int criar(Orcamento orcamento);
  void atualizar(Orcamento orcamento);
  void deletar(int id);
  Orcamento buscarPorId(int id);
  List<Orcamento> buscarTodos();
}