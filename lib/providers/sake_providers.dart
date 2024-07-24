import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/sake_api.dart';
import '../repository/sake_repository.dart';
import '../viewmodels/sake_viewmodel.dart';

final sakeApiProvider = Provider((ref) => SakeApi());
final sakeRepositoryProvider =
    Provider((ref) => SakeRepository(ref.read(sakeApiProvider)));
final sakeViewModelProvider = ChangeNotifierProvider(
    (ref) => SakeViewModel(ref.read(sakeRepositoryProvider)));
