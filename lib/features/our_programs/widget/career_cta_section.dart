import 'package:flutter/material.dart';

class CareerCTASection extends StatelessWidget {
  final VoidCallback onViewCourses;

  const CareerCTASection({super.key, required this.onViewCourses});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF000000),
            Color(0xFF0A1F2C), 
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          /// SMALL TEXT
          const Text(
            "START TODAY",
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 12),

          /// TITLE
          const Text(
            "Launch Your IT Career\nWith AL-MAWA",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.3,
            ),
          ),

          const SizedBox(height: 16),

          /// DESCRIPTION
          const Text(
            "Join hundreds of students who have successfully transformed their careers through our courses and internship program.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white70, height: 1.5),
          ),

          const SizedBox(height: 30),

          /// APPLY BUTTON
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Apply Now →"),
            ),
          ),

          const SizedBox(height: 12),

          /// OUTLINE BUTTON
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: onViewCourses,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "View All Courses",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
