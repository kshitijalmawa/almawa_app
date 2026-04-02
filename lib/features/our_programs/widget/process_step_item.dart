import 'package:flutter/material.dart';

class ProcessStepItem extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const ProcessStepItem({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// CIRCLE NUMBER
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 2),
          ),
          alignment: Alignment.center,
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),

        const SizedBox(height: 12),

        /// TITLE
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        /// DESCRIPTION
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}


class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProcessStepItem(
          number: "01",
          title: "Enroll",
          description:
              "Choose your course and complete enrollment. Our team guides you through onboarding.",
        ),
        ProcessStepItem(
          number: "02",
          title: "Learn",
          description:
              "Attend live sessions, access recorded content and work through structured modules.",
        ),
        ProcessStepItem(
          number: "03",
          title: "Build Projects",
          description:
              "Work on real client projects under mentorship and build a strong professional portfolio.",
        ),
        ProcessStepItem(
          number: "04",
          title: "Get Certified",
          description:
              "Complete your internship, receive your certificate and get full job placement support.",
        ),
      ],
    );
  }
}
class ReferralStepItem extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const ReferralStepItem({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// BLUE FILLED CIRCLE
        Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            color: Color(0xFF1E88E5),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        const SizedBox(height: 10),

        /// TITLE
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),

        const SizedBox(height: 6),

        /// DESCRIPTION
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
              height: 1.5,
            ),
          ),
        ),

        const SizedBox(height: 28),
      ],
    );
  }
}
