//Modelling the item entity here

class Item {
  final int id;
  final String name;
  final String description;

  Item({required this.id, required this.name , required this.description});

  factory Item.fromJSON(Map<String, dynamic> json) {
    return Item(id: json['id'], name: json['name'], description: json['description']);
  }
}
