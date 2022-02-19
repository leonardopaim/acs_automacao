import '../Entities/_entities.dart';

abstract class ServicoRepository {
  void cadastrar(Servico servico);
  void atualizar(Servico servico);
  void deletar(int id);
  Servico buscarPorId(int id);
  List<Servico> buscarTodos();
}