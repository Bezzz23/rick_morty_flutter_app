class Episode {
  int id;
  String name;
  String date;
  String episodeName;

  Episode(
      {required this.id,
      this.name = '',
      this.date = '',
      this.episodeName = ''});

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
        id: json['id'],
        name: json['name'],
        date: json['air_date'],
        episodeName: json['episode']);
  }
}
