import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:todo/feature/feature.dart';

final class IsarDataService {
  IsarDataService();

  Completer<Isar>? _completer;

  Future<Isar> getIsarInstance() async {
    if (_completer != null) {
      return _completer!.future;
    }
    _completer = Completer<Isar>();

    final dir = await getApplicationDocumentsDirectory();
    final isar = Isar.open(
      [TaskIsarModelSchema],
      directory: dir.path,
    );

    _completer!.complete(isar);
    return _completer!.future;
  }
}
