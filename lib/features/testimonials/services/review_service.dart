import 'dart:convert';
import 'package:almawa_app/features/testimonials/model/review_model.dart';
import 'package:http/http.dart' as http;

class ReviewService {
  ReviewService._();
  static final ReviewService instance = ReviewService._();

  static const String baseUrl = "https://www.al-mawa.international/api/reviews";

  Future<ReviewModel> submitReview(ReviewModel review) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: const {"Content-Type": "application/json"},
      body: jsonEncode(review.toJson()),
    );

    final body = jsonDecode(response.body);

    final List reviews = body["reviews"];

    return ReviewModel.fromJson(reviews.first);
  }
}
