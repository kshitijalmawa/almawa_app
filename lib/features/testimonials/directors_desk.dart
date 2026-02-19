import 'dart:io';

import 'package:almawa_app/features/testimonials/widget/director_feedback_form.dart';
import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DirectorsDesk extends StatefulWidget {
  const DirectorsDesk({super.key});

  @override
  State<DirectorsDesk> createState() => _DirectorsDeskState();
}

class _DirectorsDeskState extends State<DirectorsDesk> {
  File? selectedImage;
  String fileName = "No file chosen";

  final ImagePicker picker = ImagePicker();

  // ✅ Pick Image Function
  Future<void> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
        fileName = image.name; // shows file name
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              if (Navigator.of(context).canPop())
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
                  onPressed: () => Navigator.pop(context),
                ),
              Image.asset("assets/images/logoblack.png", height: 45),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "SHARE YOUR EXPERIENCE",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      color: Color(0xFF00AEEF),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Director's Desk",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    "Your feedback matters. Share your experience with us and help us improve.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    "Why Share Your Feedback?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    "At Al-Mawa International, your voice drives our growth. "
                    "Every comment, suggestion, and insight helps us deliver "
                    "better services and experiences.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: const [
                  _FeedbackCard(
                    iconColor: Colors.blue,
                    bgColor: Color(0xFFEAF5FF),
                    title: "Directly Reviewed",
                    subtitle:
                        "Your feedback is personally reviewed by our leadership team",
                  ),

                  SizedBox(height: 16),

                  _FeedbackCard(
                    iconColor: Colors.green,
                    bgColor: Color(0xFFE9FFF1),
                    title: "Confidential & Secure",
                    subtitle:
                        "Your information is kept safe and handled with care",
                  ),

                  SizedBox(height: 16),

                  _FeedbackCard(
                    iconColor: Colors.purple,
                    bgColor: Color(0xFFF6ECFF),
                    title: "Impact Our Services",
                    subtitle:
                        "Your insights directly help us improve and serve you better",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: const DirectorsFeedbackForm(),
            ),
            const SizedBox(height: 80),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _FeedbackCard extends StatelessWidget {
  final Color iconColor;
  final Color bgColor;
  final String title;
  final String subtitle;

  const _FeedbackCard({
    required this.iconColor,
    required this.bgColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: iconColor, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


