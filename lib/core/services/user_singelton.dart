class ActiveUserSingleton {
  String? userUid;

  static ActiveUserSingleton? _instance;

  ActiveUserSingleton._({this.userUid});

  factory ActiveUserSingleton({String? userUid}) => _instance ??= ActiveUserSingleton._(userUid: userUid);
}
