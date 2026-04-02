import 'package:almawa_app/features/our_programs/screens/franchise/widget/franchise_form_dialog.dart';
import 'package:flutter/material.dart';

class FranchiseRequirementsSection extends StatelessWidget {
  const FranchiseRequirementsSection({super.key});

  Widget _buildRequirement(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Blue Dot
          Container(
            margin: const EdgeInsets.only(top: 6),
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),

          /// Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCTASection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1E88E5), Color(0xFF0D47A1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Text(
            "Ready to Start Your\nFranchise Journey?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Take the first step towards building a\nsuccessful business with Al-Mawa",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 15, height: 1.5),
          ),
          const SizedBox(height: 20),

          /// Button
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const FranchiseFormDialog(),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF1E88E5),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "Apply Now",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRequirement(
          "Business Acumen",
          "Strong business understanding and entrepreneurial spirit",
        ),
        _buildRequirement(
          "Investment Capacity",
          "Minimum investment as per franchise package",
        ),
        _buildRequirement("Office Space", "Minimum 300 sq ft commercial space"),
        _buildRequirement(
          "Team Management",
          "Ability to build and manage a team",
        ),

        const SizedBox(height: 30),

        _buildCTASection(context),
      ],
    );
  }
}
