import 'dart:async';
import 'package:flutter/material.dart';

class ChangingWord extends StatefulWidget {
  const ChangingWord({super.key});

  @override
  State<ChangingWord> createState() => _ChangingWordState();
}

class _ChangingWordState extends State<ChangingWord> {
  final List<String> words = ["Now.", "Tomorrow.", "Future."];
  int index = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        index = (index + 1) % words.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: Container(
        key: ValueKey(words[index]),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          words[index],
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
