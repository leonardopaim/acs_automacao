import 'package:acs_automacao/03%20-%20Domain/Entities/_entities.dart';

class ServicoBuilder {
  final Servico _servico = Servico();

  ServicoBuilder._();

  static ServicoBuilder get init => ServicoBuilder._();

  Servico build() => _servico;

  ServicoBuilder servicoDefault() {
    _servico.id = 1;
    return this;
  }

  ServicoBuilder id(int id){
    _servico.id = id;
    return this;
  }
}