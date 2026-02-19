import 'dart:convert';
import 'package:almawa_app/features/contact_us/model/contact_model.dart';
import 'package:http/http.dart' as http;

class ContactService {
  ContactService._();

  static final ContactService _instance = ContactService._();
  static ContactService get instance => _instance;

  static const String _url = "https://www.al-mawa.international/api/contact-us";

  Future<bool> submitContact(ContactModel contact) async {
    final response = await http.post(
      Uri.parse(_url),
      headers: const {"Content-Type": "application/json"},
      body: jsonEncode(contact.toJson()),
    );

    final body = jsonDecode(response.body);
    return body["success"] == true;
  }
}
