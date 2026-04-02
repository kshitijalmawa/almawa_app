import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  Widget buildItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildItem("500+", "Students Enrolled"),
        const SizedBox(height: 20),
        Divider(color: Colors.grey.shade300, indent: 40, endIndent: 40),

        const SizedBox(height: 20),
        buildItem("6", "Courses Available"),

        const SizedBox(height: 20),
        Divider(color: Colors.grey.shade300, indent: 40, endIndent: 40),

        const SizedBox(height: 20),
        buildItem("95%", "Placement Rate"),
      ],
    );
  }
}
