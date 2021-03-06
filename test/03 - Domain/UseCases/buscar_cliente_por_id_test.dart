
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
  
  test("Deve retornar um cliente corretamente", (){
    final clienteBuild = ClienteBuilder.init.clienteDefault().build();
    final id = clienteBuild.id;
    when(() => clienteRepository.buscarPorId(id)).thenReturn(clienteBuild);
    final sut = BuscaClientePorIdUseCase(clienteRepository);

    final cliente = sut(id);

    expect(cliente.id, clienteBuild.id);
    verify(() => sut(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para buscar o cliente por id no repositório", (){
    final clienteBuild = ClienteBuilder.init.clienteDefault().build();
    final id = clienteBuild.id;
    when(() => clienteRepository.buscarPorId(id)).thenThrow(Exception());
    final sut = BuscaClientePorIdUseCase(clienteRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}