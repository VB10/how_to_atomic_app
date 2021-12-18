class User {
  final String name;
  final String password;

  User(this.name, this.password);

  static User get mockUser {
    return User("veli", "1234");
  }

  static List<User> get mockUsers {
    return [User("veli", "1234"), User("veli2", "1234"), User("veli3", "1234")];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.name == name && other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ password.hashCode;
}
