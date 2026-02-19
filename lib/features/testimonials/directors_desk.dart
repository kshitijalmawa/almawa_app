import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';

class DirectorsDesk extends StatelessWidget {
  const DirectorsDesk({super.key});

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
                  onPressed: () => Navigator.pop(context),
                ),
              Image.asset("assets/images/logoblack.png", height: 45),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "SHARE YOUR EXPERIENCE",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      color: Color(0xFF00AEEF),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Director's Desk",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    "Your feedback matters. Share your experience with us and help us improve.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    "Why Share Your Feedback?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    "At Al-Mawa International, your voice drives our growth. "
                    "Every comment, suggestion, and insight helps us deliver "
                    "better services and experiences.",
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: const [
                  _FeedbackCard(
                    iconColor: Colors.blue,
                    bgColor: Color(0xFFEAF5FF),
                    title: "Directly Reviewed",
                    subtitle:
                        "Your feedback is personally reviewed by our leadership team",
                  ),

                  SizedBox(height: 16),

                  _FeedbackCard(
                    iconColor: Colors.green,
                    bgColor: Color(0xFFE9FFF1),
                    title: "Confidential & Secure",
                    subtitle:
                        "Your information is kept safe and handled with care",
                  ),

                  SizedBox(height: 16),

                  _FeedbackCard(
                    iconColor: Colors.purple,
                    bgColor: Color(0xFFF6ECFF),
                    title: "Impact Our Services",
                    subtitle:
                        "Your insights directly help us improve and serve you better",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Share Your Feedback",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      "Tell us about your experience with our services",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),

                    const SizedBox(height: 25),

                    const _LabelText("Your Feedback *"),
                    const _InputBox(
                      hint: "Share your experience with us...",
                      maxLines: 4,
                    ),

                    const SizedBox(height: 18),

                    const _LabelText("Full Name *"),
                    const _InputBox(hint: "Enter your full name"),

                    const SizedBox(height: 18),

                    const _LabelText("Email Address *"),
                    const _InputBox(hint: "your@email.com"),

                    const SizedBox(height: 18),

                    const _LabelText("Mobile Number *"),
                    const _InputBox(hint: "Enter your mobile number"),

                    const SizedBox(height: 18),

                    const _LabelText("Your Designation / Role"),
                    const _InputBox(hint: "e.g., Manager, Business Owner"),

                    const SizedBox(height: 18),

                    const _LabelText("Rate Your Experience *"),

                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: "5 Stars",
                              items: const [
                                DropdownMenuItem(
                                  value: "5 Stars",
                                  child: Text("5 Stars"),
                                ),
                                DropdownMenuItem(
                                  value: "4 Stars",
                                  child: Text("4 Stars"),
                                ),
                                DropdownMenuItem(
                                  value: "3 Stars",
                                  child: Text("3 Stars"),
                                ),
                                DropdownMenuItem(
                                  value: "2 Stars",
                                  child: Text("2 Stars"),
                                ),
                                DropdownMenuItem(
                                  value: "1 Stars",
                                  child: Text("1 Stars"),
                                ),
                              ],
                              onChanged: (value) {},
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    const _LabelText("Upload Your Photo (Optional)"),

                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF00AEEF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              // TODO: Add file picker logic
                            },
                            child: const Text(
                              "Choose File",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          const SizedBox(width: 14),

                          const Text(
                            "No file chosen",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00AEEF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Submit Feedback",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _FeedbackCard extends StatelessWidget {
  final Color iconColor;
  final Color bgColor;
  final String title;
  final String subtitle;

  const _FeedbackCard({
    required this.iconColor,
    required this.bgColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: iconColor, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LabelText extends StatelessWidget {
  final String text;
  const _LabelText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _InputBox extends StatelessWidget {
  final String hint;
  final int maxLines;

  const _InputBox({required this.hint, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black38),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.black12),
        ),
      ),
    );
  }
}
