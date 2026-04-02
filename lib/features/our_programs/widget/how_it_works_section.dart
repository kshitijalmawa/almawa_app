import 'package:almawa_app/features/our_programs/widget/process_step_item.dart';
import 'package:flutter/material.dart';

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
      ],
    );
  }
}