class Posts {
  int id;
  Name name;
  String? text;
  String? image;

  Posts({
    required this.id,
    required this.name,
    this.text,
    this.image,
  });
}

class Name {
  String firstName;
  String lastName;

  Name({
    required this.firstName,
    required this.lastName,
  });
}