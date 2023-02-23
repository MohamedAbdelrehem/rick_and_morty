class Character {
  late int id;
  late String name;
  late String deadOrAlive;
  late String humanOrAlian;
  late String features;
  late String gender;
  late String image;
  late List<dynamic> episodeApearedIn;

  Character.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    deadOrAlive = json["status"];
    humanOrAlian = json["species"];
    features= json["type"];
    gender= json["gender"];
    image= json["image"];
  }
