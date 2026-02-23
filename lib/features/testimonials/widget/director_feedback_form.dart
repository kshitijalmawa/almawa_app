import 'dart:convert';
import 'dart:io';
import 'package:almawa_app/features/testimonials/model/review_model.dart';
import 'package:almawa_app/features/testimonials/services/review_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DirectorsFeedbackForm extends StatefulWidget {
  const DirectorsFeedbackForm({super.key});

  @override
  State<DirectorsFeedbackForm> createState() => _DirectorsFeedbackFormState();
}

class _DirectorsFeedbackFormState extends State<DirectorsFeedbackForm> {
  final _formKey = GlobalKey<FormState>();

  final feedbackController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final roleController = TextEditingController();

  int rating = 5;

  File? selectedImage;
  String fileName = "No file chosen";
  String base64Image = "";

  bool isLoading = false;

  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 70, // compress to reduce base64 size
    );

    if (image != null) {
      final bytes = await image.readAsBytes();
      setState(() {
        selectedImage = File(image.path);
        fileName = image.name;
        base64Image = base64Encode(bytes);
      });
    }
  }

  @override
  void dispose() {
    feedbackController.dispose();
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    roleController.dispose();
    super.dispose();
  }

  Future<void> submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => isLoading = true);

    try {
      final review = ReviewModel(
        name: nameController.text.trim(),
        feedback: feedbackController.text.trim(),
        email: emailController.text.trim(),
        mobile: mobileController.text.trim(),
        designation: roleController.text.trim(),
        rating: rating,
        image: base64Image,
      );

      await ReviewService.instance.submitReview(review);

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Feedback submitted successfully"),
          backgroundColor: Color(0xFF2796C6),
        ),
      );

      _resetForm();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Submission failed: ${e.toString()}"),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    feedbackController.clear();
    nameController.clear();
    emailController.clear();
    mobileController.clear();
    roleController.clear();
    setState(() {
      rating = 5;
      selectedImage = null;
      fileName = "No file chosen";
      base64Image = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Share Your Feedback",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),

            // Feedback text area
            _buildField(
              feedbackController,
              "Share your experience...",
              maxLines: 4,
            ),
            const SizedBox(height: 15),

            // Full Name
            _buildField(nameController, "Enter your full name"),
            const SizedBox(height: 15),

            // Email
            _buildField(
              emailController,
              "your@email.com",
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) return "Required field";
                final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (!emailRegex.hasMatch(value)) return "Enter a valid email";
                return null;
              },
            ),
            const SizedBox(height: 15),

            // Mobile
            _buildField(
              mobileController,
              "Enter your mobile number",
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) return "Required field";
                if (value.length < 7) return "Enter a valid mobile number";
                return null;
              },
            ),
            const SizedBox(height: 15),

            // Role / Designation
            _buildField(roleController, "e.g., Manager, Business Owner"),
            const SizedBox(height: 20),

            // Rating Row
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      value: rating,
                      items: List.generate(5, (i) {
                        final stars = 5 - i;
                        return DropdownMenuItem(
                          value: stars,
                          child: Text("$stars Star${stars > 1 ? 's' : ''}"),
                        );
                      }),
                      onChanged: (val) {
                        if (val != null) setState(() => rating = val);
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      Icons.star,
                      size: 22,
                      color: index < rating
                          ? Colors.amber
                          : Colors.grey.shade300,
                    );
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Image upload
            const Text(
              "Upload Your Photo (Optional)",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: isLoading ? null : pickImage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2796C6),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Choose File"),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      fileName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  if (selectedImage != null)
                    IconButton(
                      icon: const Icon(Icons.close, size: 18),
                      onPressed: () {
                        setState(() {
                          selectedImage = null;
                          fileName = "No file chosen";
                          base64Image = "";
                        });
                      },
                    ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Submit button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: isLoading ? null : submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2796C6),
                  foregroundColor: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isLoading
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2.5,
                        ),
                      )
                    : const Text(
                        "Submit Feedback",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField(
    TextEditingController controller,
    String hint, {
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator:
          validator ??
          (value) => value == null || value.isEmpty ? "Required field" : null,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
      ),
    );
  }
}
