extension GetDate on String {
  String get getDate {
    DateTime dateTime = DateTime.parse(this);
    return "${dateTime.year}-${dateTime.month}-${dateTime.day}";
  }
}
