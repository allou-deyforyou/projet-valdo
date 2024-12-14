class Task {
  const Task({
    required this.id,
    required this.title,
  });

  final String id;
  final String title;

  Task copyWith({
    String? id,
    String? title,
  }) {
    return Task(
      title: title ?? this.title,
      id: id ?? this.id,
    );
  }

  Task clone() {
    return copyWith(
      title: title,
      id: id,
    );
  }
}
