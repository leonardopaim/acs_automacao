import '../Entities/_entities.dart';
import '../Interfaces/_interfaces.dart';

class BuscaFornecedorPorIdUseCase {
  final FornecedorRepository _fornecedorRepository;

  BuscaFornecedorPorIdUseCase(this._fornecedorRepository);

  Fornecedor call(int id){
    final fornecedor = _fornecedorRepository.buscarPorId(id);

    return fornecedor;
  }
}