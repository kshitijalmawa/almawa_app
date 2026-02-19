import 'package:almawa_app/shared/enquiry/services/enquiry_services.dart';
import 'package:flutter/material.dart';

class EnquiryDialog extends StatefulWidget {
  const EnquiryDialog({super.key});

  @override
  State<EnquiryDialog> createState() => _EnquiryDialogState();
}

class _EnquiryDialogState extends State<EnquiryDialog> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final companyController = TextEditingController();
  final projectController = TextEditingController();

  String service = "Select Service";

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    companyController.dispose();
    projectController.dispose();
    super.dispose();
  }

  Widget _buildField({
    required TextEditingController controller,
    required IconData icon,
    required String hint,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        validator: validator,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon, size: 20),
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  void _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    if (service == "Select Service") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please select a service")));
      return;
    }

    final response = await EnquiryService.instance.submitEnquiry(
      fullName: nameController.text.trim(),
      email: emailController.text.trim(),
      number: phoneController.text.trim(),
      companyName: companyController.text.trim(),
      serviceInterestedIn: service,
      projectDetails: projectController.text.trim(),
    );

    if (response != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enquiry submitted successfully")),
      );
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Failed to submit enquiry")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get In Touch",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Tell us about your project requirements",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),

                const Divider(height: 30),

                _buildField(
                  controller: nameController,
                  icon: Icons.person_outline,
                  hint: "Enter your full name",
                  validator: (v) => v!.isEmpty ? "Name is required" : null,
                ),

                _buildField(
                  controller: emailController,
                  icon: Icons.email_outlined,
                  hint: "Enter your email address",
                  validator: (v) => v!.isEmpty ? "Email is required" : null,
                ),

                _buildField(
                  controller: phoneController,
                  icon: Icons.phone_outlined,
                  hint: "Enter your phone number",
                ),

                _buildField(
                  controller: companyController,
                  icon: Icons.business_outlined,
                  hint: "Enter your company name",
                ),

                DropdownButtonFormField<String>(
                  value: service,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.keyboard_arrow_down),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Select Service",
                      child: Text("Service Interested In"),
                    ),
                    DropdownMenuItem(
                      value: "Web Development",
                      child: Text("Web Development"),
                    ),
                    DropdownMenuItem(
                      value: "IT & Tech Services",
                      child: Text("IT & Tech Services"),
                    ),
                    DropdownMenuItem(
                      value: "Digital Marketing",
                      child: Text("Digital Marketing"),
                    ),
                    DropdownMenuItem(
                      value: "Graphics Design",
                      child: Text("Graphics Design"),
                    ),
                    DropdownMenuItem(
                      value: "AI Services",
                      child: Text("AI Services"),
                    ),
                  ],
                  onChanged: (val) {
                    setState(() => service = val!);
                  },
                ),

                const SizedBox(height: 16),

                _buildField(
                  controller: projectController,
                  icon: Icons.chat_bubble_outline,
                  hint:
                      "Tell us about your project requirements, timeline, and budget...",
                  maxLines: 4,
                  validator: (v) =>
                      v!.isEmpty ? "Project details required" : null,
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.send_outlined, size: 18),
                    label: const Text("Send Enquiry"),
                    onPressed: _submitForm,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
