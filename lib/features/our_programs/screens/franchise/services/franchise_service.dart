// https://www.al-mawa.international/api/franchise-apply
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/franchise_model.dart';

class FranchiseService {
  static const String url =
      "https://www.al-mawa.international/api/franchise-apply";

  static Future<Map<String, dynamic>> submitForm(FranchiseModel model) async {
    try {
      print('═══════════════════════════════════════════════════════');
      print('🚀 FRANCHISE FORM SUBMISSIpuneON');
      print('═══════════════════════════════════════════════════════');
      print('📍 URL: $url');
      print('📍 Method: POST');
      
      final jsonBody = model.toJson();
      final body = jsonEncode(jsonBody);
      
      print('📤 Request Body:');
      print(body);
      print('\n📋 Parsed Fields:');
      print('- fullName: "${jsonBody['fullName']}"');
      print('- emailAddress: "${jsonBody['emailAddress']}"');
      print('- phoneNumber: "${jsonBody['phoneNumber']}"');
      print('- businessName: "${jsonBody['businessName']}"');
      print('- location: "${jsonBody['location']}"');
      print('- yearsOfExperience: "${jsonBody['yearsOfExperience']}"');
      print('- investmentCapacity: "${jsonBody['investmentCapacity']}"');
      print('- businessBackground length: ${jsonBody['businessBackground'].toString().length}');
      print('- message: "${jsonBody['message']}"');

      final response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        body: body,
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw Exception('Request timeout'),
      );

      print('\n📥 Response Status: ${response.statusCode}');
      print('📥 Response Body: ${response.body}');
      print('═══════════════════════════════════════════════════════\n');

      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          final responseData = jsonDecode(response.body);
          return {
            'success': true,
            'message': responseData['message'] ?? 'Application submitted successfully! ✅',
            'data': responseData['data'],
          };
        } catch (e) {
          return {
            'success': true,
            'message': 'Application submitted successfully! ✅',
          };
        }
      } else if (response.statusCode == 400) {
        print('❌ Bad Request (400)');
        try {
          final errorData = jsonDecode(response.body);
          print('Error details: $errorData');
          return {
            'success': false,
            'message': errorData['message'] ?? 'Invalid form data. Please check your entries.',
          };
        } catch (e) {
          return {
            'success': false,
            'message': 'Invalid form data. Please check your entries.',
          };
        }
      } else if (response.statusCode == 422) {
        print('❌ Unprocessable Entity (422)');
        try {
          final errorData = jsonDecode(response.body);
          print('Validation errors: $errorData');
          return {
            'success': false,
            'message': errorData['message'] ?? 'Validation error. Please check your form.',
          };
        } catch (e) {
          return {
            'success': false,
            'message': 'Validation error. Please check your form.',
          };
        }
      } else if (response.statusCode == 500) {
        print('❌ Server Error (500)');
        print('Response body: ${response.body}');
        return {
          'success': false,
          'message': 'Server error. Please try again later.',
        };
      } else {
        print('❌ Unexpected Status: ${response.statusCode}');
        print('Response body: ${response.body}');
        return {
          'success': false,
          'message': 'Error: ${response.statusCode}. Please try again.',
        };
      }
    } catch (e) {
      print('❌ Exception: $e');
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }
}
