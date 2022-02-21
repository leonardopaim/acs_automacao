import 'package:acs_automacao/02%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:acs_automacao/02%20-%20Domain/UseCases/_usecases.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../Helpers/Mocks/mocks.dart';

void main() {
  late ClienteRepository clienteRepository;

  setUp(() {
    clienteRepository = MockClienteRepository();
  });

  test("Deve deletar o cliente corretamente", () {
    const id = 1;
    final sut = DeletarClienteUseCase(clienteRepository);

    sut(id);

    verify(() => sut(id)).called(1);
  });

  test("Deve lançar uma exceção ao fazer a chamada para deletar o cliente no repositório", (){
    const id = 1;
    when(() => clienteRepository.deletar(id)).thenThrow(Exception());
    final sut = DeletarClienteUseCase(clienteRepository);

    action() =>  sut(id);

    expect(action, throwsA(isA<Exception>()));
    verify(() => sut(id)).called(1);
  });
}
