class Member {
  int id;
  String name;
  List<String> nicknames;
  String fanbase;
  int generation;
  String jiko;
  String description;
  String photoUrl;
  bool isOshi;

  Member({
    required this.id,
    required this.name,
    required this.nicknames,
    required this.fanbase,
    required this.generation,
    required this.jiko,
    required this.description,
    required this.photoUrl,
    this.isOshi = false
  });
}
