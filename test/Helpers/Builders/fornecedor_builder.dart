import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';

class FornecedorBuilder {
  final Fornecedor _fornecedor = Fornecedor();

  FornecedorBuilder._();

  static FornecedorBuilder get init => FornecedorBuilder._();

  Fornecedor build() => _fornecedor;

  FornecedorBuilder fornecedorDefault() {
    _fornecedor.id = 1;
    return this;
  }

  FornecedorBuilder id(int id){
    _fornecedor.id = id;
    return this;
  }
}