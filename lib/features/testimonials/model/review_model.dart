class ReviewModel {
  final String name;
  final String feedback;
  final String email;
  final String mobile;
  final String designation;
  final int rating;
  final String image;
  final String? createdAt;
  final String? status;

  ReviewModel({
    required this.name,
    required this.feedback,
    required this.email,
    required this.mobile,
    required this.designation,
    required this.rating,
    required this.image,
    this.createdAt,
    this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "feedback": feedback,
      "email": email,
      "mobile": mobile,
      "designation": designation,
      "rating": rating,
      "image": image,
    };
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json["name"] ?? "",
      feedback: json["feedback"] ?? "",
      email: json["email"] ?? "",
      mobile: json["mobile"] ?? "",
      designation: json["designation"] ?? "",
      rating: json["rating"] ?? 0,
      image: json["image"] ?? "",
      createdAt: json["createdAt"],
      status: json["status"],
    );
  }
}
