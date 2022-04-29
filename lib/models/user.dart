class User{
   int userId;
   String fullname;
   String email;
   String phoneNo;
   String password;
   String imgUrl;

  User({
      required this.userId,
      required this.fullname,
      required this.email,
      required this.phoneNo,
      required this.password,
      required this.imgUrl
    });

    factory User.fromJson(Map<String,dynamic> json) =>
      User(
        userId: json['id'],
        fullname: json['fullname'],
        phoneNo: json['phone_no'],
        password: json['password'],
        imgUrl: json['imgUrl'],
        email: json['email'],
      );

      Map<String,dynamic> toJson() =>{
        'name':fullname,
        'phone_no':phoneNo,
        'email':email,
        'password':password,
         };
    
}