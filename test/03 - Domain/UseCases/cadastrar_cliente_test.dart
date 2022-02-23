import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/03%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Builders/cliente_builder.dart';
import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ClienteRepository clienteRepository;

  setUp(() {
    clienteRepository = MockClienteRepository();
  });

  test("Deve cadastrar o cliente corretamente", () {
    final cliente = ClienteBuilder.init.clienteDefault().build();
    when(() => clienteRepository.cadastrar(cliente)).thenReturn(cliente.id);
    final sut = CadastrarClienteUseCase(clienteRepository);

    final id = sut(cliente);

    expect(id, cliente.id);
    verify(() => clienteRepository.cadastrar(cliente)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para cadastrar cliente no repositório", () {
    final cliente = ClienteBuilder.init.clienteDefault().build();
    final sut = CadastrarClienteUseCase(clienteRepository);
    when(() => clienteRepository.cadastrar(cliente)).thenThrow(Exception());

    action() => sut(cliente);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(cliente)).called(1);
  });
}
