import '../../models/ceosi_flutter_catalog/code_model.dart';

abstract class CodeRepositoryInterface {
  Future<CodeModel?> getCodeData();
}
