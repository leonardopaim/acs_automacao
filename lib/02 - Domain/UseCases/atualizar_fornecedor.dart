import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarFornecedorUseCase {
  final FornecedorRepository _fornecedorRepository;

  AtualizarFornecedorUseCase(this._fornecedorRepository);

  bool call(Fornecedor fornecedor) {
    _fornecedorRepository.atualizar(fornecedor);

    return true;
  }
}
