class Modelnote {
  int? userId;
  int? id;
  String? title;
  String? body;

  Modelnote({this.userId, this.id, this.title, this.body});

  static Modelnote fromJson(Map<String, dynamic> json) {
    return Modelnote(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }

  Map<String, dynamic> toJson() {
    return {"userId": userId, "id": id, "title": title, "body": body};
  }
}
