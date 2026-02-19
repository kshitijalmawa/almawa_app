import 'package:almawa_app/features/contact_us/model/contact_model.dart';
import 'package:almawa_app/features/contact_us/services/contact_service.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class ContactFormWidget extends StatefulWidget {
  const ContactFormWidget({super.key});

  @override
  State<ContactFormWidget> createState() => _ContactFormWidgetState();
}

class _ContactFormWidgetState extends State<ContactFormWidget> {
  final _formKey = GlobalKey<FormState>();

  String? selectedCountry;
  bool _isLoading = false;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final mobileController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    mobileController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    if (selectedCountry == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please select a country")));
      return;
    }

    setState(() => _isLoading = true);

    final contact = ContactModel(
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      emailAddress: emailController.text.trim(),
      phoneNumber: phoneController.text.trim(),
      mobileNumber: mobileController.text.trim(),
      selecetCountry: selectedCountry!,
      subject: subjectController.text.trim(),
      tellUsAboutYou: messageController.text.trim(),
    );

    final success = await ContactService.instance.submitContact(contact);

    setState(() => _isLoading = false);

    if (!mounted) return;

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Message Submitted Successfully")),
      );
      _clearForm();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Submission failed. Please try again.")),
      );
    }
  }

  void _clearForm() {
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    phoneController.clear();
    mobileController.clear();
    subjectController.clear();
    messageController.clear();
    setState(() => selectedCountry = null);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                '𝖲𝖤𝖭𝖣 𝖴𝖲 𝖠 \n𝖬𝖤𝖲𝖲𝖠𝖦𝖤',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              const Text(
                'Fill out the form below and we will get back to you within 24 hours.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),

              _buildTextField(firstNameController, "First Name"),
              const SizedBox(height: 18),

              _buildTextField(lastNameController, "Last Name"),
              const SizedBox(height: 18),

              _buildTextField(emailController, "Email Address", isEmail: true),
              const SizedBox(height: 18),

              _buildTextField(phoneController, "Phone Number"),
              const SizedBox(height: 18),

              _buildTextField(mobileController, "Mobile Number"),
              const SizedBox(height: 18),

              _buildCountryPicker(),
              const SizedBox(height: 18),

              _buildTextField(subjectController, "Subject"),
              const SizedBox(height: 18),

              _buildTextField(messageController, "Message", maxLines: 4),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String hint, {
    bool isEmail = false,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: _inputDecoration(hint),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hint is required";
        }
        if (isEmail && !value.contains("@")) {
          return "Enter valid email";
        }
        return null;
      },
    );
  }

  Widget _buildCountryPicker() {
    return GestureDetector(
      onTap: () {
        showCountryPicker(
          context: context,
          showPhoneCode: false,
          onSelect: (Country country) {
            setState(() {
              selectedCountry = country.name;
            });
          },
        );
      },
      child: Container(
        height: 55,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedCountry ?? "Select Country",
              style: TextStyle(
                fontSize: 16,
                color: selectedCountry == null
                    ? Colors.grey.shade500
                    : Colors.black,
              ),
            ),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
  );
}
