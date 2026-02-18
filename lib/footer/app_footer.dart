import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Brand Icon
          Image.asset(
            "assets/images/logowhite.png",
            height: 100,
            fit: BoxFit.contain,
          ),

          // Tagline
          const Text(
            "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
            style: TextStyle(color: Colors.white70, fontSize: 14, height: 1.6),
          ),

          const SizedBox(height: 28),

          // Contact Info Title
          const Text(
            "CONTACT INFO",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),

          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              launchURL("mailto:business@al-mawa.international");
            },
            child: Row(
              children: const [
                Icon(Icons.email_outlined, color: Colors.white70, size: 20),
                SizedBox(width: 12),
                Text(
                  "business@al-mawa.international",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          GestureDetector(
            onTap: () {
              launchURL("tel:+919561179693");
            },
            child: Row(
              children: const [
                Icon(Icons.phone_outlined, color: Colors.white70, size: 20),
                SizedBox(width: 12),
                Text(
                  "+91 9561179693 | 9511991736",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              launchURL(
                "https://www.google.com/maps/search/?api=1&query=Al-Mawa+International",
              );
            },
            child: Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white70,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  "AL-MAWA INTERNATIONAL Location",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          Divider(color: Colors.white24),

          const SizedBox(height: 20),

          // Copyright
          const Text(
            "© 2026 AI Mawa International. All rights reserved.",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),

          const SizedBox(height: 16),

          // Links
          const Text("Our Work", style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          const Text(
            "Terms & Conditions / Policy",
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 24),
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
    );
  }
}
