import 'package:acs_automacao/03%20-%20Domain/Entities/_entities.dart';

class OrcamentoBuilder {
  final Orcamento _orcamento = Orcamento();

  OrcamentoBuilder._();

  static OrcamentoBuilder get init => OrcamentoBuilder._();

  Orcamento build() => _orcamento;

  OrcamentoBuilder orcamentoDefault() {
    _orcamento.id = 1;
    return this;
  }

  OrcamentoBuilder id(int id){
    _orcamento.id = id;
    return this;
  }
}