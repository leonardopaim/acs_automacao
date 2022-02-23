import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class CadastrarFornecedorUseCase {
  final FornecedorRepository _fornecedorRepository;

  CadastrarFornecedorUseCase(this._fornecedorRepository);

  int call(Fornecedor fornecedor) {
    final id = _fornecedorRepository.cadastrar(fornecedor);

    return id;
  }
}
