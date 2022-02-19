import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';

class ProdutoBuilder {
  final Produto _produto = Produto();

  ProdutoBuilder._();

  static ProdutoBuilder get init => ProdutoBuilder._();

  Produto build() => _produto;

  ProdutoBuilder produtoDefault() {
    _produto.id = 1;
    return this;
  }

  ProdutoBuilder id(int id){
    _produto.id = id;
    return this;
  }
}