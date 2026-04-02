import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  final String name;
  final String role;
  final String message;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.role,
    required this.message,
  });

  String get initials {
    final parts = name.split(" ");
    return parts.length >= 2 ? "${parts[0][0]}${parts[1][0]}" : parts[0][0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// QUOTE ICON
          const Icon(Icons.format_quote, color: Colors.blue, size: 28),

          const SizedBox(height: 10),

          /// MESSAGE
          Expanded(
            child: Text(
              message,
              maxLines: 5, // ✅ prevents overflow
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// USER INFO
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    role,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StudentStoriesSection extends StatefulWidget {
  const StudentStoriesSection({super.key});

  @override
  State<StudentStoriesSection> createState() => _StudentStoriesSectionState();
}

class _StudentStoriesSectionState extends State<StudentStoriesSection> {
  final ScrollController _controller = ScrollController();
  bool _isRunning = true; // ✅ control loop safely

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      autoScroll();
    });
  }

  void autoScroll() async {
    while (_isRunning) {
      await Future.delayed(const Duration(milliseconds: 40));

      if (!_controller.hasClients) continue;

      _controller.animateTo(
        _controller.offset + 20,
        duration: const Duration(milliseconds: 400),
        curve: Curves.linear,
      );

      /// loop reset
      if (_controller.offset >= _controller.position.maxScrollExtent / 2) {
        _controller.jumpTo(0);
      }
    }
  }

  @override
  void dispose() {
    _isRunning = false; // ✅ stop loop
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final testimonials = [
      {
        "name": "Arjun Kumar",
        "role": "Frontend Developer at TechCorp",
        "message":
            "The web development course was exactly what I needed. Projects were real and challenging, and mentors were always available. I landed a job within 2 months.",
      },
      {
        "name": "Priya Sharma",
        "role": "ML Engineer at DataFlow Inc.",
        "message":
            "The AI course opened a completely new world for me. Within 6 months I went from zero coding knowledge to building machine learning models. Truly transformative.",
      },
      {
        "name": "Mohammed Rashid",
        "role": "Full Stack Developer",
        "message":
            "Best investment I made in my career. The internship certificate and portfolio helped me stand out in interviews. Job placement guidance was invaluable.",
      },
      {
        "name": "Sara Al-Amin",
        "role": "Cloud Engineer at FinStack",
        "message":
            "The Cloud Computing module was incredibly well-structured. I passed my AWS exam first attempt and now manage infrastructure for a fintech startup. Amazing!",
      },
      {
        "name": "Neha Kulkarni",
        "role": "Product Designer at Zomato",
        "message":
            "As a designer, I was hesitant about a tech program. The UI/UX course was perfect — practical, industry-focused, and mentors really understood the design process.",
      },
      {
        "name": "Rahul Patil",
        "role": "Flutter Developer at AppVentures",
        "message":
            "I completed the mobile app internship and my Flutter app is now live on the Play Store. The real-project experience made all the difference in my interviews.",
      },
    ];

    final loopedList = [...testimonials, ...testimonials];

    return SizedBox(
      height: 260,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: loopedList.length,
        itemBuilder: (context, index) {
          final t = loopedList[index];

          return TestimonialCard(
            name: t["name"]!,
            role: t["role"]!,
            message: t["message"]!,
          );
        },
      ),
    );
  }
}
