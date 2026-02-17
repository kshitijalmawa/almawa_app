import 'package:flutter/material.dart';

class DeskVoiceCard extends StatelessWidget {
  final String quote;
  final String teamName;

  const DeskVoiceCard({super.key, required this.quote, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.blue.shade100, width: 1.5),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue.shade50],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quote Icon
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.format_quote,
              size: 40,
              color: Colors.blue.shade100,
            ),
          ),

          const SizedBox(height: 6),

          // Quote Text
          Text(
            quote,
            style: const TextStyle(
              fontSize: 14.5,
              height: 1.6,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 18),

          Divider(color: Colors.blue.shade100),

          const SizedBox(height: 10),

          // Team Label
          Text(
            teamName.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.blue.shade600,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
