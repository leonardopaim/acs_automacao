import 'package:acs_automacao/03%20-%20Domain/Interfaces/_interfaces.dart';
import 'package:mocktail/mocktail.dart';

class MockClienteRepository extends Mock implements ClienteRepository {}

class MockFornecedorRepository extends Mock implements FornecedorRepository {}

class MockProdutoRepository extends Mock implements ProdutoRepository {}

class MockServicoRepository extends Mock implements ServicoRepository {}

class MockOrcamentoRepository extends Mock implements OrcamentoRepository {}
