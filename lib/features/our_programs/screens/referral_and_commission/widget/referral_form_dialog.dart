import 'package:almawa_app/features/our_programs/screens/referral_and_commission/model/referral_model.dart';
import 'package:almawa_app/features/our_programs/screens/referral_and_commission/services/referral_services.dart';
import 'package:flutter/material.dart';

class ReferralFormDialog extends StatefulWidget {
  const ReferralFormDialog({super.key});

  @override
  State<ReferralFormDialog> createState() => _ReferralFormDialogState();
}

class _ReferralFormDialogState extends State<ReferralFormDialog> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final companyController = TextEditingController();
  final designationController = TextEditingController();
  final clientController = TextEditingController();
  final messageController = TextEditingController();

  String? referralSource;
  String? interestedService;
  bool isLoading = false;

  Future<void> submitForm() async {
    if (referralSource == null || interestedService == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please select all dropdowns")),
      );
      return;
    }

    setState(() => isLoading = true);

    final model = ReferralModel(
      fullName: nameController.text,
      emailAddress: emailController.text,
      phoneNumber: phoneController.text,
      companyName: companyController.text,
      designationPosition: designationController.text,
      referralSource: referralSource!,
      interestedServices: interestedService!,
      clientDetails: clientController.text,
      message: messageController.text,
    );

    final response = await ReferralService.submitForm(model);

    setState(() => isLoading = false);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(response["message"])));

    if (response["success"]) {
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    companyController.dispose();
    designationController.dispose();
    clientController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Header ──────────────────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Referral Application Form",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ── Fields ───────────────────────────────────────────────
              _input("Full Name", controller: nameController),
              _input(
                "Email Address",
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              _input(
                "Phone Number",
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              _input("Company Name", controller: companyController),
              _input(
                "Your Designation/Position",
                controller: designationController,
              ),

              // ── Dropdowns ────────────────────────────────────────────
              _referralSourceDropdown(),
              _servicesDropdown(),

              // ── Text Areas ───────────────────────────────────────────
              _input(
                "Tell us about your potential clients...",
                controller: clientController,
                maxLines: 3,
              ),
              _input(
                "Additional Message (optional)",
                controller: messageController,
                maxLines: 2,
              ),

              const SizedBox(height: 16),

              // ── Submit Button ─────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: isLoading ? null : submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Submit Application",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              size: 18,
                              color: Colors.white,
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Helper Widgets (all inside the class) ────────────────────────────

  Widget _input(
    String hint, {
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
    TextEditingController? controller,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _referralSourceDropdown() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        value: referralSource,
        hint: const Text(
          "Select Referral Source",
          overflow: TextOverflow.ellipsis,
        ),
        items: const [
          DropdownMenuItem(value: "1", child: Text("Web Services")),
          DropdownMenuItem(value: "2", child: Text("Digital Marketing")),
          DropdownMenuItem(value: "3", child: Text("IT Services")),
          DropdownMenuItem(value: "4", child: Text("Others")),
        ],
        onChanged: (val) {
          setState(() => referralSource = val);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _servicesDropdown() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        value: interestedService,
        hint: const Text(
          "What services are you interested in?",
          overflow: TextOverflow.ellipsis,
        ),
        items: const [
          DropdownMenuItem(value: "web", child: Text("Web Services")),
          DropdownMenuItem(
            value: "marketing",
            child: Text("Digital Marketing"),
          ),
          DropdownMenuItem(value: "design", child: Text("IT Services")),
          DropdownMenuItem(value: "ai", child: Text("All Services")),
        ],
        onChanged: (val) {
          setState(() => interestedService = val); // ✅ Works now
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
