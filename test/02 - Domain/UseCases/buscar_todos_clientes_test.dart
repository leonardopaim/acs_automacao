import 'package:acs_automacao/02%20-%20Domain/Entities/_entities.dart';
import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/cliente_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ClienteRepository clienteRepository;

  setUp(() {
    clienteRepository = MockClienteRepository();
  });

  test("Deve retornar uma lista de clientes corretamente", () {
    final cliente1 = ClienteBuilder.init.id(1).build();
    final cliente2 = ClienteBuilder.init.id(2).build();
    final clientesBuild = <Cliente>[cliente1, cliente2];
    when(() => clienteRepository.buscarTodos()).thenReturn(clientesBuild);
    final sut = BuscarTodosClientesUseCase(clienteRepository);

    final clientes = sut();

    expect(clientes.length, clientesBuild.length);
    verify(() => sut()).called(1);
  });
}
