import 'package:flutter/material.dart';

class ReachUsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> lines;
  final String footerText;

  const ReachUsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.lines,
    required this.footerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),

      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),

      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: Colors.white, size: 30),
          ),

          const SizedBox(width: 16),

          // ✅ Text Side
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ Title smaller
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 6),

                // ✅ Lines smaller + tighter spacing
                ...lines.map(
                  (text) => Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                // ✅ Footer text smaller
                Text(
                  footerText,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
