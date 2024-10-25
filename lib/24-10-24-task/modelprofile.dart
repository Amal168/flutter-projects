
import 'package:flutter/foundation.dart';

class Modelprofile {
  int? id;
  String? image;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;

  Modelprofile(
      {this.id, this.image, this.firstName, this.maidenName, this.lastName, this.age,this.gender,this.email});

   static Modelprofile fromJson(Map<String, dynamic> json) {
    return Modelprofile(
      id: json["id"],
      image: json["image"],
      firstName: json["firstName"],
      maidenName: json["maidenName"],
      lastName: json["lastName"],
      age: json["age"],
      gender: json["gender"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id":id,
      "image": image,
      "firstName": firstName,
      "maidenName": maidenName,
      "lastName": lastName,
      "age":age,
      "gender":gender,
      "email": email
    };
  }
}
