import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';

class ClienteBuilder {
  final Cliente _cliente = Cliente();

  ClienteBuilder._();

  static ClienteBuilder get init => ClienteBuilder._();

  Cliente build() => _cliente;

  ClienteBuilder clienteDefault() {
    _cliente.id = 1;
    return this;
  }

  ClienteBuilder id(int id){
    _cliente.id = id;
    return this;
  }
}