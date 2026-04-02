import 'package:almawa_app/features/our_programs/screens/franchise/model/franchise_model.dart';
import 'package:almawa_app/features/our_programs/screens/franchise/services/franchise_service.dart';
import 'package:flutter/material.dart';

class FranchiseFormDialog extends StatefulWidget {
  const FranchiseFormDialog({super.key});

  @override
  State<FranchiseFormDialog> createState() => _FranchiseFormDialogState();
}

class _FranchiseFormDialogState extends State<FranchiseFormDialog> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final businessController = TextEditingController();
  final locationController = TextEditingController();
  final experienceController = TextEditingController();
  final backgroundController = TextEditingController();
  final messageController = TextEditingController();

  String? investment;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Franchise Application Form",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              _buildField("Full Name", fullNameController),
              _buildField("Email Address", emailController),
              _buildField("Phone Number", phoneController, isNumeric: true),
              _buildField("Business Name (if any)", businessController),
              _buildField("City/Location", locationController),
              _buildField("Years of Business Experience", experienceController, isNumeric: true),

              _buildDropdown(),

              _buildTextArea(
                "Tell us about your business background...",
                backgroundController,
              ),
              _buildTextArea(
                "Additional Message (optional)",
                messageController,
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() => isLoading = true);

                    final model = FranchiseModel(
                      fullName: fullNameController.text,
                      emailAddress: emailController.text,
                      phoneNumber: "+91 ${phoneController.text}",
                      businessName: businessController.text,
                      location: locationController.text,
                      yearsOfExperience: experienceController.text,
                      investmentCapacity: investment ?? "",
                      businessBackground: backgroundController.text,
                      message: messageController.text,
                    );

                    final result = await FranchiseService.submitForm(model);

                    setState(() => isLoading = false);

                    if (!mounted) return;

                    if (result['success']) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(result['message']),
                          backgroundColor: Colors.green,
                          duration: const Duration(seconds: 3),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(result['message']),
                          backgroundColor: Colors.red,
                          duration: const Duration(seconds: 4),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Text(
                          "Submit Application",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
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

  /// TextField
  Widget _buildField(String hint, TextEditingController controller, {bool isNumeric = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        keyboardType: isNumeric ? TextInputType.phone : TextInputType.text,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF2F3F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  /// Dropdown
  Widget _buildDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF2F3F5),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 4,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        hint: const Text("Select Investment Capacity"),
        items: const [
          DropdownMenuItem(value: "5-10 Lakh", child: Text("5–10 Lakh")),
          DropdownMenuItem(value: "10-20 Lakh", child: Text("10–20 Lakh")),
          DropdownMenuItem(value: "20-50 Lakh", child: Text("20–50 Lakh")),
          DropdownMenuItem(value: "50+ Lakh", child: Text("50+ Lakh")),
        ],
        onChanged: (value) {
          setState(() {
            investment = value;
          });
        },
      ),
    );
  }

  /// TextArea
  Widget _buildTextArea(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller, // ✅ FIX
        maxLines: 3,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF2F3F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
