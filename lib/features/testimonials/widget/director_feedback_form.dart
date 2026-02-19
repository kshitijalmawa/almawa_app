import 'dart:io';
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

  String rating = "5 Stars";

  File? selectedImage;
  String fileName = "No file chosen";

  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        fileName = image.name;
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

  void submitForm() {
    if (!_formKey.currentState!.validate()) return;

    debugPrint("Feedback: ${feedbackController.text}");
    debugPrint("Name: ${nameController.text}");
    debugPrint("Email: ${emailController.text}");
    debugPrint("Mobile: ${mobileController.text}");
    debugPrint("Role: ${roleController.text}");
    debugPrint("Rating: $rating");
    debugPrint("Image: $fileName");

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Feedback submitted successfully")),
    );
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

            _buildField(feedbackController, "Share your experience...", 4),
            const SizedBox(height: 15),

            _buildField(nameController, "Enter your full name"),
            const SizedBox(height: 15),

            _buildField(emailController, "your@email.com"),
            const SizedBox(height: 15),

            _buildField(mobileController, "Enter your mobile number"),
            const SizedBox(height: 15),

            _buildField(roleController, "e.g., Manager, Business Owner"),
            const SizedBox(height: 20),

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: rating,
                      items: const [
                        DropdownMenuItem(
                          value: "5 Stars",
                          child: Text("5 Stars"),
                        ),
                        DropdownMenuItem(
                          value: "4 Stars",
                          child: Text("4 Stars"),
                        ),
                        DropdownMenuItem(
                          value: "3 Stars",
                          child: Text("3 Stars"),
                        ),
                        DropdownMenuItem(
                          value: "2 Stars",
                          child: Text("2 Stars"),
                        ),
                        DropdownMenuItem(
                          value: "1 Stars",
                          child: Text("1 Stars"),
                        ),
                      ],
                      onChanged: (val) {
                        setState(() => rating = val!);
                      },
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Row(
                  children: List.generate(5, (index) {
                    int selectedStars = int.parse(
                      rating[0],
                    ); 

                    return Icon(
                      Icons.star,
                      size: 22,
                      color: index < selectedStars
                          ? Colors.amber
                          : Colors.grey.shade300,
                    );
                  }),
                ),
              ],
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xFF2796C6,
                  ), 
                  foregroundColor: Colors.white,
                  elevation: 4, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), 
                  ),
                ),
                child: const Text(
                  "Submit Feedback",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    String hint, [
    int maxLines = 1,
  ]) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      validator: (value) =>
          value == null || value.isEmpty ? "Required field" : null,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
