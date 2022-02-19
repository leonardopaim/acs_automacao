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
}
