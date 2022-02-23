import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class AtualizarFornecedorUseCase {
  final FornecedorRepository _fornecedorRepository;

  AtualizarFornecedorUseCase(this._fornecedorRepository);

  void call(Fornecedor fornecedor) {
    _fornecedorRepository.atualizar(fornecedor);
  }
}
