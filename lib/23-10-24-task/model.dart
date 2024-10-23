import 'package:flutter/foundation.dart';

//1. create class
class Model {
  int? id;
  String? title;
  double? price;
  String? image;
  String? description;
  Rating? rating;

//2.create constructor
  Model({
    this.id,
    this.title,
    this.price,
    this.image,
    this.description,
    this.rating,
  });
//3.create jsonfrom
 static Model fromJson(Map<String, dynamic> json) {
    return Model(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        image: json["image"],
        description: json["description"],
        //  rating: json ["rating"] ,
        rating:Rating.fromJson(json["rating"])
        );
  }

//create jsonto
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "image": image,
      "description": description,
      "rating":rating?.toJson(),
    };
  }
}


//create a class rateing for rate
class Rating {
  //create variable
  double? rate;
  int? count;
  //create constructer
  Rating({this.rate, this.count});

  //create fromjson

 static Rating fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json["rate"],
      count: json["count"],
    );
  }
  //create tojson
    Map<String, dynamic> toJson() {
    return {
      "rate": rate,
      "count": count,
    };
  }
}
