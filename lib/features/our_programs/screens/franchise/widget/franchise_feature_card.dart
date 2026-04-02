import 'package:flutter/material.dart';

class FranchiseFeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? extraText; // 👈 NEW (optional)

  const FranchiseFeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.extraText, // 👈 optional
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          /// Icon
          Icon(icon, size: 40, color: const Color(0xFF1E88E5)),

          /// 👇 NEW EXTRA TEXT (only shows if provided)
          if (extraText != null) ...[
            const SizedBox(height: 10),
            Text(
              extraText!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E88E5),
              ),
            ),
          ],

          const SizedBox(height: 12),

          /// Title
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 8),

          /// Subtitle
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
