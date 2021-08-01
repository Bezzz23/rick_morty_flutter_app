class Character {
  int id;
  String name;
  String imageUrl;
  String location;

  Character(
      {required this.id,
      this.name = '',
      this.imageUrl = '',
      this.location = ''});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        id: json['id'],
        name: json['name'],
        imageUrl: json['image'],
        location: json['location']['name']);
  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'image': imageUrl,
    };
  }
}
