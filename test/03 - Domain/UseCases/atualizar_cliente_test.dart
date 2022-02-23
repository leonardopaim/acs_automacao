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
    reset(clienteRepository);
  });

  test("Deve atualizar o cliente corretamente", () {
    final cliente = ClienteBuilder.init.clienteDefault().build();
    final sut = AtualizarClienteUseCase(clienteRepository);

    sut(cliente);

    verify(() => sut(cliente)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para atualizar cliente no repositório", () {
    final cliente = ClienteBuilder.init.clienteDefault().build();
    final sut = AtualizarClienteUseCase(clienteRepository);
    when(() => clienteRepository.atualizar(cliente)).thenThrow(Exception());

    action() => sut(cliente);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(cliente)).called(1);
  });
}
