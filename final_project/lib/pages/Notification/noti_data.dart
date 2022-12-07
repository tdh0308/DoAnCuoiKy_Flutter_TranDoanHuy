class Noti {
  final String name;
  final String hour;

  Noti(this.name, this.hour);

  factory Noti.fromJson(Map<String, dynamic> data) {
    return Noti(data['name'], data['descriptions']);
  }
}
