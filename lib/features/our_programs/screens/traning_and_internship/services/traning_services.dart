import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/traning_model.dart';

class TraningService {
  static const String url =
      "https://www.al-mawa.international/api/internship-apply";

  static Future<Map<String, dynamic>> submitForm(TraningModel model) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: jsonEncode(model.toJson()),
      );

      final data = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return {
          "success": true,
          "message": data["message"] ?? "Submitted successfully",
        };
      } else {
        return {
          "success": false,
          "message": data["message"] ?? "Something went wrong",
        };
      }
    } catch (e) {
      return {"success": false, "message": "Network error"};
    }
  }
}
