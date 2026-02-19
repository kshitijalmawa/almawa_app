import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 170,
        leading: Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Row(
            children: [
              if (Navigator.of(context).canPop())
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black87,
                    size: 18,
                  ),
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
                    "TESTIMONIALS & CASE STUDIES",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                      color: Color(0xFF00AEEF),
                    ),
                  ),

                  const SizedBox(height: 25),

                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 42,
                        height: 1.2,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "What Our\n"),
                        TextSpan(
                          text: "Clients",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF00AEEF),
                          ),
                        ),
                        TextSpan(text: "\nSay"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "A selection of brands that trust AL-MAWA International "
                    "to shape their digital presence — from high-performing "
                    "social media campaigns to premium, conversion-focused websites.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: const [
                      _TagChip(text: "SOCIAL MEDIA • ADS • WEB"),
                      _TagChip(text: "STRATEGY • DESIGN • DEVELOPMENT"),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
           const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  final String text;

  const _TagChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          color: Colors.black87,
        ),
      ),
    );
  }
}
