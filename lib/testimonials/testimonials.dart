import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> launchURL(String url) async {
      final Uri uri = Uri.parse(url);

      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw "Could not launch $url";
      }
    }

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

            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logowhite.png",
                    height: 85,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 35),

                  const Text(
                    "CONTACT INFO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 25),

                  _infoRow(
                    icon: Icons.email_outlined,
                    text: "business@al-mawa.international",
                  ),

                  const SizedBox(height: 16),

                  _infoRow(
                    icon: Icons.phone_outlined,
                    text: "+91 9561179693 | 9511991736",
                  ),

                  const SizedBox(height: 16),

                  _infoRow(
                    icon: Icons.location_on_outlined,
                    text: "AL-MAWA INTERNATIONAL Location",
                  ),

                  const SizedBox(height: 30),

                  Divider(color: Colors.white24),

                  const SizedBox(height: 25),

                  const Text(
                    "© 2026 AI Mawa International. All rights reserved.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Our Work",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Terms & Conditions / Policy",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),

                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          launchURL("https://x.com/al_mawa__");
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.xTwitter,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 18),
                      IconButton(
                        onPressed: () {
                          launchURL(
                            "https://www.linkedin.com/company/al-mawa-international-opc-private-limited/posts/?feedView=all",
                          );
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 18),
                      IconButton(
                        onPressed: () {
                          launchURL(
                            "https://www.instagram.com/al_mawainternational?igsh=MXJkbWt3b3NvOTBmaw%3D%3D",
                          );
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _infoRow({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 22),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white70, fontSize: 15),
          ),
        ),
      ],
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
