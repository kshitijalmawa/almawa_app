import 'package:flutter/material.dart';
import 'dart:async';

class ScrollingStrip extends StatefulWidget {
  const ScrollingStrip({super.key});

  @override
  State<ScrollingStrip> createState() => _ScrollingStripState();
}

class _ScrollingStripState extends State<ScrollingStrip> {
  final ScrollController _controller = ScrollController();

  final List<String> items = [
    "Cloud Computing",
    "UI/UX Design",
    "Software Internship",
    "Web Development",
    "Mobile Apps",
    "Artificial Intelligence",
  ];

  @override
  void initState() {
    super.initState();
    startScrolling();
  }

  void startScrolling() {
    Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (_controller.hasClients) {
        _controller.jumpTo(_controller.offset + 1);

        // Loop effect
        if (_controller.offset >= _controller.position.maxScrollExtent) {
          _controller.jumpTo(0);
        }
      }
    });
  }

  Widget buildItem(String text) {
    return Row(
      children: [
        Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(width: 10),

        Container(
          width: 5,
          height: 5,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.blue,
      child: ListView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ...items.map(buildItem).toList(),

          ...items.map(buildItem).toList(),
        ],
      ),
    );
  }
}
