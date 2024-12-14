import 'package:isar/isar.dart';

import 'package:todo/core/_core.dart';
import 'package:todo/feature/feature.dart';

part 'isar.g.dart';

@Collection(accessor: 'tasks')
class TaskIsarModel extends Task {
  TaskIsarModel({
    required super.id,
    required super.title,
  });

  factory TaskIsarModel.fromTask(Task task) {
    return TaskIsarModel(
      title: task.title,
      id: task.id,
    );
  }

  Id get isarId => id.fastHash;
}
