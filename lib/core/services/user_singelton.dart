class ActiveUserSingelton {
  //! TODO Use `Singleton`
  String? userUid;

  static ActiveUserSingelton? _instance;

  ActiveUserSingelton._({this.userUid});

  factory ActiveUserSingelton({String? userUid}) {
    _instance ??= ActiveUserSingelton._(userUid: userUid);

    return _instance!;
  }
}
