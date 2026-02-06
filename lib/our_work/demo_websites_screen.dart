import 'package:almawa_app/widget/demo_website_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DemoWebsitesScreen extends StatelessWidget {
  const DemoWebsitesScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Demo \n ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: " WEBSITES",
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Explore our portfolio of demo websites showcasing modern design and functionality ",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  _TagChip(text: "𝖣𝖤𝖬𝖮 𝖯𝖱𝖮𝖩𝖤𝖢𝖳𝖲"),
                  _TagChip(text: "𝖫𝖨𝖵𝖤 𝖤𝖷𝖠𝖬𝖯𝖫𝖤𝖲"),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Divider(height: 1),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Our Demo Websites",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Explore our collection of demo websites showcasing modern design and functionality across different industries. ",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ),
            Column(
              children: const [
                DemoWebsiteCard(
                  image: "assets/images/wheel_harmony.png",
                  title: "Wheel Harmony",
                  description:
                      "A modern automotive website showcasing vehicle services and harmony in design.",
                  tags: ["NEXT.JS", "TAILWIND"],
                  url: "https://wheel-harmony.vercel.app/",
                ),

                DemoWebsiteCard(
                  image: "assets/images/craveable_co.png",
                  title: "Craveable Co",
                  description:
                      "A delightful food and beverage website with an appetizing design.",
                  tags: ["NEXT.JS", "TAILWIND"],
                  url: "https://craveable-co.vercel.app/",
                ),

                DemoWebsiteCard(
                  image: "assets/images/lux_perfume.png",
                  title: "Lux Perfume",
                  description:
                      "A luxurious perfume website showcasing elegant fragrance and scents.",
                  tags: ["NEXT.JS", "TAILWIND"],
                  url: "https://lux-perfume.vercel.app/",
                ),

                DemoWebsiteCard(
                  image: "assets/images/feesy_school_hub.png",
                  title: "Fessy School Hub",
                  description:
                      "A comprehensiveschool management hub for educational institutionsand student.",
                  tags: ["NEXT.JS", "TAILWIND"],
                  url: "https://feesy-school-hub.vercel.app/",
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖡𝗎𝗂𝗅𝖽 𝖸𝗈𝗎𝗋 𝖶𝖾𝖻𝗌𝗂𝗍𝖾?',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Let\'s create something amazing together. Contact us to discuss your project.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 45),
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(6),
                    
                  ),
                ),
                onPressed: () {},
                child: Text('Get Started',style: TextStyle(fontSize: 16),),
              ),
            ),
            SizedBox(height: 40),
              Container(
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
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.6,
                    ),
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
                        Icon(
                          Icons.email_outlined,
                          color: Colors.white70,
                          size: 20,
                        ),
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
                        Icon(
                          Icons.phone_outlined,
                          color: Colors.white70,
                          size: 20,
                        ),
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
                  const Text(
                    "Our Work",
                    style: TextStyle(color: Colors.white70),
                  ),
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
            ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          letterSpacing: 1,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
