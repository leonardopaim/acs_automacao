import '../Entities/_entities.dart';

abstract class ServicoRepository {
  int cadastrar(Servico servico);
  void atualizar(Servico servico);
  void deletar(int id);
  Servico buscarPorId(int id);
  List<Servico> buscarTodos();
}