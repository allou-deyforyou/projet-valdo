import 'package:todo/feature/feature.dart';

abstract interface class TaskRepository {
  Future<void> createTask(Task task);

  Future<void> updateTask(Task task);

  Future<void> deleteTask();

  Future<Task> getTaskById(String id);

  Future<List<Task>> getListTask();
}
