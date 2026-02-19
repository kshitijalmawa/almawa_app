import 'dart:convert';
import 'package:almawa_app/shared/enquiry/model/enquiry_model.dart';
import 'package:http/http.dart' as http;

class EnquiryService {
  EnquiryService._();

  static final EnquiryService _instance = EnquiryService._();
  static EnquiryService get instance => _instance;

  static const String baseUrl = "https://www.al-mawa.international/api/enquiry";

  Future<EnquiryData?> submitEnquiry({
    required String fullName,
    required String email,
    required String number,
    required String companyName,
    required String serviceInterestedIn,
    required String projectDetails,
  }) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "fullName": fullName,
        "Email": email,
        "Number": number,
        "CompanyName": companyName, // ✅ Added
        "ServiceIntrestedIn": serviceInterestedIn,
        "ProjectDetails": projectDetails,
      }),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      if (body['success'] == true) {
        return EnquiryData.fromJson(body['data']);
      }
    }

    return null;
  }
}
