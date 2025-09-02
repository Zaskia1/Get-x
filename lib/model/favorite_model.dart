class Favorite {
  final int id;
  final String name; // Nama item favorit
  final String description; // Deskripsi item
  final String imgPath; // Path gambar item

  Favorite({
    required this.id,
    required this.name,
    required this.description,
    required this.imgPath,
  });

  // Convert a Favorite into a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imgPath': imgPath,
    };
  }

  // Convert a Map into a Favorite
  static Favorite fromMap(Map<String, dynamic> map) {
    return Favorite(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      imgPath: map['imgPath'],
    );
  }
}
