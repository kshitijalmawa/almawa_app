import 'package:almawa_app/features/our_programs/model/program_details.dart';
import 'package:flutter/material.dart';

class ProgramDetailsScreen extends StatefulWidget {
  const ProgramDetailsScreen({super.key, required ProgramModel program});

  @override
  State<ProgramDetailsScreen> createState() => _ProgramDetailsScreenState();
}

class _ProgramDetailsScreenState extends State<ProgramDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              if (Navigator.of(context).canPop())
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
                  onPressed: () => Navigator.of(context).maybePop(),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Image.asset('assets/images/logoblack.png', height: 48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}