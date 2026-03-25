import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JaipurBranchSection extends StatelessWidget {
  const JaipurBranchSection({super.key});

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
      color: const Color(0xFFF6F7F9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Titlebandwidth meaning
          const Center(
            child: Text(
              "OUR JAIPUR BRANCH",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1E88E5),
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// Subtitle
          Text(
            "Expanding our footprint in Rajasthan with a state-of-the-art workspace in the heart of Jaipur",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 15,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 28),

          const Text(
            "Premium Coworking Space",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0288D1),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Located in the prestigious Signature Elite building, our Jaipur branch offers a modern, collaborative environment in the city's prime business district. This strategic location allows us to better serve our growing client base in Rajasthan and Northern India.",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 14,
              height: 1.6,
            ),
          ),

          const SizedBox(height: 20),

          /// Address Title
          const Text(
            "Address:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0288D1),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "J, Signature Elite, Connekt Co-Working Office Spaces\n"
            "4th Floor Above Westside Showroom\n"
            "7th Govind Marg, Narayan Singh Circle\n"
            "Jaipur, Rajasthan - 302004",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 14,
              height: 1.6,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Get Directions:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF0288D1),
            ),
          ),

          const SizedBox(height: 12),

          /// Button
          SizedBox(
            width: 220,
            height: 48,
            child: ElevatedButton.icon(
              onPressed: () {
                launchURL(
                  "https://www.google.com/maps/place/Connekt+-+Coworking+Space+in+Tonk+Road,+Jaipur/@26.8991882,75.8142119,3a,75y,90t/data=!3m8!1e2!3m6!1sCIHM0ogKEICAgIDLm72aFA!2e10!3e12!6shttps:%2F%2Flh3.googleusercontent.com%2Fgps-cs-s%2FAHVAweq_aZ2I4h_rRh6zk-z6JqyDf_bKnmiPRnk8QVp1V1mlBek-UA4W0rK-SFsELkT2NQlVdG9YTyJ4e0EgCI5B0tQeRn-LDn98A5khN3YbQtqYtpiu1KXDsgMRvSwnF0Bf8ur2J2FT%3Dw152-h86-k-no!7i7680!8i4320!4m7!3m6!1s0x396db716a010b2cd:0x3e2290de8ca9e00f!8m2!3d26.8993959!4d75.8143621!10e5!16s%2Fg%2F11y3lncpy1?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0288D1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.location_on, color: Colors.white),
              label: const Text(
                "View on Google Maps",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Jaipur Images
          Column(
            children: [
              _buildImageCard("assets/images/jaipur_1.png"),
              const SizedBox(height: 16),
              _buildImageCard("assets/images/jaipur_2.png"),
              const SizedBox(height: 16),
              _buildImageCard("assets/images/jaipur_3.png"),
            ],
          ),
        ],
      ),
    );
  }
}
Widget _buildImageCard(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: AspectRatio(
      aspectRatio: 16 / 9, 
      child: Image.asset(imagePath, width: double.infinity, fit: BoxFit.cover),
    ),
  );
}
