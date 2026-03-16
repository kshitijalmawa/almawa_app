import 'dart:convert';
import 'package:almawa_app/features/testimonials/model/review_model.dart';
import 'package:http/http.dart' as http;

class ReviewService {
  ReviewService._();
  static final ReviewService instance = ReviewService._();

  static const String baseUrl = "https://www.al-mawa.international/api/reviews";

  Future<ReviewModel> submitReview(ReviewModel review) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: const {"Content-Type": "application/json"},
        body: jsonEncode(review.toJson()),
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () => throw Exception('Request timeout'),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = jsonDecode(response.body);

        if (body is Map && body.containsKey("reviews")) {
          final List reviews = body["reviews"];
          return ReviewModel.fromJson(reviews.first as Map<String, dynamic>);
        } else {
          throw Exception('Invalid response format: missing "reviews" key');
        }
      } else {
        throw Exception('Failed to submit review: ${response.statusCode}');
      }
    } catch (e) {
      print('Error submitting review: $e');
      rethrow;
    }
  }
  Future<List<ReviewModel>> getReviews() async {
    try {
      final response = await http.get(
        Uri.parse(baseUrl),
        headers: const {"Content-Type": "application/json"},
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () => throw Exception('Request timeout'),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        print('Parsed body: $body');

        List<ReviewModel> reviews = [];

        // Handle different API response formats
        if (body is Map) {
          if (body.containsKey("reviews")) {
            final List reviewsList = body["reviews"] as List;
            reviews = reviewsList.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>)).toList();
          } else if (body.containsKey("data")) {
            // If response is wrapped in 'data' key
            final List reviewsList = body["data"] as List;
            reviews = reviewsList.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>)).toList();
          } else {
            print('Attempting to parse as single review or different structure');
            return [];
          }
        } else if (body is List) {
          // If the response is directly a list of reviews
          reviews = body.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>)).toList();
        }

        print('Parsed ${reviews.length} reviews');
        return reviews;
      } else {
        throw Exception('Failed to load reviews: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching reviews: $e');
      rethrow;
    }
  }
}
