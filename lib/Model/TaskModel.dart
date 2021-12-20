// ignore_for_file: non_constant_identifier_names, file_names

class TaskModel {
  TaskModel({required this.name, this.IsApproved = false});
  final String name;
  bool IsApproved;
  void toggle() {
    IsApproved = !IsApproved;
  }
}
