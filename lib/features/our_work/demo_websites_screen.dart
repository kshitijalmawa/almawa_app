import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:almawa_app/features/contact_us/contact_us_screen.dart';
import 'package:almawa_app/features/our_work/widget/demo_website_card.dart';
import 'package:flutter/material.dart';

class DemoWebsitesScreen extends StatelessWidget {
  const DemoWebsitesScreen({super.key});

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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsScreen()),
                  );
                },
                child: Text('Get Started', style: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(height: 40),
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
