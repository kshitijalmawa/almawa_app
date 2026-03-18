import 'dart:convert';
import 'package:almawa_app/features/testimonials/model/review_model.dart';
import 'package:http/http.dart' as http;

class ReviewService {
  ReviewService._();
  static final ReviewService instance = ReviewService._();

  static const String baseUrl = "https://www.al-mawa.international/api/reviews";

  Future<ReviewModel?> submitReview(ReviewModel review) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: const {"Content-Type": "application/json"},
      body: jsonEncode(review.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final body = jsonDecode(response.body);

      if (body is Map && body["reviews"] != null) {
        final List reviews = body["reviews"];
        return ReviewModel.fromJson(reviews.first);
      }
    }

    return null;
  }
  Future<List<ReviewModel>> getReviews() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      List<ReviewModel> reviews = [];

      if (body is Map && body["reviews"] != null) {
        reviews = (body["reviews"] as List)
            .map((e) => ReviewModel.fromJson(e))
            .toList();
      } else if (body is List) {
        reviews = body.map((e) => ReviewModel.fromJson(e)).toList();
      }

      return reviews
          .where((review) => review.status?.toLowerCase() == "approved")
          .toList();
    }

    return [];
  }
}
