import 'dart:convert';
import 'package:almawa_app/features/our_programs/model/program_details.dart';
import 'package:http/http.dart' as http;

class ProgramService {
  static const String _baseUrl =
      'https://www.al-mawa.international/api/courses';

  static Future<List<ProgramModel>> getAllPrograms() async {
    try {
      final response = await http.get(
        Uri.parse(_baseUrl),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);

        if (jsonData['success'] == true) {
          final List<dynamic> data = jsonData['data'];
          return data.map((item) => ProgramModel.fromJson(item)).toList();
        } else {
          throw Exception('API returned success: false');
        }
      } else {
        throw Exception(
          'Failed to load programs. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Error fetching programs: $e');
    }
  }

  static Future<ProgramModel?> getProgramBySlug(String slug) async {
    
      final response = await http.get(
        Uri.parse('$_baseUrl?slug=$slug'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);

        if (jsonData['success'] == true) {
          final List<dynamic> data = jsonData['data'];
          if (data.isNotEmpty) {
            return ProgramModel.fromJson(data[0]);
          }
          return null;
        } else {
          throw Exception('API returned success: false');
        }
      } else {
        throw Exception(
          'Failed to load program. Status: ${response.statusCode}',
        );
      }
    
  }
}
