class SignUpFormModel{

  final String? name;
  final String? email;
  final String? Password;
  final String? pin;
  final String? profilePicture;
  final String? ktp;

  SignUpFormModel({
    this.name, 
    this.email, 
    this.Password, 
    this.pin, 
    this.profilePicture, 
    this.ktp, 
  });

  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'email' : email,
      'password' : Password,
      'pin' : pin,
      'profile_picture' : profilePicture,
      'ktp' : ktp,
    };
  }

  SignUpFormModel copyWith(
    {String? pin,
    String? profilePicture,
    String? ktp,}
  ) => 
  SignUpFormModel(
    name: name,
    email: email,
    Password: Password,
    pin: pin ?? this.pin,
    profilePicture: profilePicture ?? this.profilePicture,
    ktp: ktp ?? this.ktp, 
    );

}