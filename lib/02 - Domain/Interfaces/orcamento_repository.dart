import '../Entities/_entities.dart';

abstract class OrcamentoRepository {
  void criar(Orcamento orcamento);
  void atualizar(Orcamento orcamento);
  void deletar(int id);
  Orcamento buscarPorId(int id);
  List<Orcamento> buscarTodos();
}