import 'dart:convert';
import 'dart:io';
import 'package:almawa_app/features/career/model/job_application.dart';
import 'package:almawa_app/features/career/model/job_application_response.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class JobService {
  static const String url =
      "https://www.al-mawa.international/api/job-apply-form";

  static Future<JobApplicationResponse> submitApplication(
      JobApplication application) async {
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.fields.addAll(application.toFields());

    print('Resume path: ${application.resumePath}');
      
    // Only add resume file if it exists and path is not empty
    if (application.resumePath.isNotEmpty && application.resumePath != '') {
      // Check if file exists
      final file = File(application.resumePath);
      if (!await file.exists()) {
        throw Exception('Resume file not found at path: ${application.resumePath}');
      }
      
      final fileSize = await file.length();
      print('Resume file size: $fileSize bytes');
      
      // Get file extension to determine MIME type
      final fileExtension = application.resumePath.split('.').last.toLowerCase();
      String contentType = 'application/octet-stream'; // default
      
      switch (fileExtension) {
        case 'pdf':
          contentType = 'application/pdf';
          break;
        case 'doc':
          contentType = 'application/msword';
          break;
        case 'docx':
          contentType = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
          break;
      }
      
      print('File extension: $fileExtension, Content-Type: $contentType');
      
      request.files.add(
        await http.MultipartFile.fromPath(
          'resume', 
          application.resumePath,
          contentType: MediaType.parse(contentType),
        ),
      );
    } else {
      print('No resume file provided - submitting without resume');
    }

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    final decoded = jsonDecode(response.body);
    return JobApplicationResponse.fromJson(decoded);
  }
}