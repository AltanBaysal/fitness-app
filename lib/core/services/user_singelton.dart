

class ActiveUserSingelton{
  String? userUid;
  
  static late ActiveUserSingelton _instance;
  static bool _isSet = false;

  ActiveUserSingelton._({this.userUid});

  factory ActiveUserSingelton({String? userUid}){
    if(!_isSet){
      _instance = ActiveUserSingelton._(userUid: userUid);
      _isSet = true;
    }
    return _instance;
  }
}