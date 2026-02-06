import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  Future<void> _openMap() async {
    final Uri uri = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=Al-Mawa+International",
    );

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not open map";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 45),

            // ✅ Top Header Row (Logo + Menu)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/logoblack.png", height: 55),
                  const Icon(Icons.menu, size: 32, color: Colors.black87),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey.shade400, thickness: 1),
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                "CONTACT US",
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  fontFamily: "TimesNewRoman",
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Click on the Map for Direction",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
            ),

            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 40),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(36),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Al-MAWA INTERNATIONAL - Pune, India',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 25),

            GestureDetector(
              onTap: _openMap,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "assets/images/mapdark.png",
                    height: 320,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
