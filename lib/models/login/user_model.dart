class UserModel {
  String? userName;
  bool? isLoggedIn;
  String? lastLogin;
  String? accessToken;
  String? message;

  UserModel(
      {this.userName,
      this.isLoggedIn,
      this.lastLogin,
      this.accessToken,
      this.message});

  UserModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    isLoggedIn = json['isLoggedIn'];
    lastLogin = json['lastLogin'];
    accessToken = json['accessToken'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['isLoggedIn'] = this.isLoggedIn;
    data['lastLogin'] = this.lastLogin;
    data['accessToken'] = this.accessToken;
    data['message'] = this.message;
    return data;
  }
}
