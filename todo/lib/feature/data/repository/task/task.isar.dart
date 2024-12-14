part of '_task.dart';

final class TaskRepositoryIsarImpl implements TaskRepository {
  const TaskRepositoryIsarImpl({
    required IsarDataService isarDataService,
  }) : _isarDataService = isarDataService;

  final IsarDataService _isarDataService;

  @override
  Future<void> createTask(Task task) async {
    try {
      final isar = await _isarDataService.getIsarInstance();
      final data = TaskIsarModel.fromTask(task);
      isar.tasks.put(data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> deleteTask() {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> getListTask() {
    // TODO: implement getListTask
    throw UnimplementedError();
  }

  @override
  Future<Task> getTaskById(String id) {
    // TODO: implement getTaskById
    throw UnimplementedError();
  }

  @override
  Future<void> updateTask(Task task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
