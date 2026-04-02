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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: ClipRect(
              child: Align(
                alignment: Alignment.topLeft, // ✅ LEFT ALIGN
                heightFactor: 0.8,
                child: Image.asset(
                  "assets/images/logowhite.png",
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 28),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "CONTACT INFO",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
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
          ),

          const SizedBox(height: 12),

          /// Phone
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
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
          ),

          const SizedBox(height: 12),

          /// Location
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 14),
            child: GestureDetector(
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
                  Expanded(
                    child: Text(
                      "AL-MAWA INTERNATIONAL PUNE Location",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 32),
            child: GestureDetector(
              onTap: () {
                launchURL(
                  "https://www.google.com/maps/place/Connekt+-+Coworking+Space+in+Tonk+Road,+Jaipur/@26.8991882,75.8142119,3a,75y,90t/data=!3m8!1e2!3m6!1sCIHM0ogKEICAgIDLm72aFA!2e10!3e12!6shttps:%2F%2Flh3.googleusercontent.com%2Fgps-cs-s%2FAHVAweq_aZ2I4h_rRh6zk-z6JqyDf_bKnmiPRnk8QVp1V1mlBek-UA4W0rK-SFsELkT2NQlVdG9YTyJ4e0EgCI5B0tQeRn-LDn98A5khN3YbQtqYtpiu1KXDsgMRvSwnF0Bf8ur2J2FT%3Dw152-h86-k-no!7i7680!8i4320!4m7!3m6!1s0x396db716a010b2cd:0x3e2290de8ca9e00f!8m2!3d26.8993959!4d75.8143621!10e5!16s%2Fg%2F11y3lncpy1?entry=ttu&g_ep=EgoyMDI2MDMxOC4xIKXMDSoASAFQAw%3D%3D",
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white70,
                    size: 20,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "AL-MAWA INTERNATIONAL JAIPUR Location",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.white24),

          /// Bottom Section Padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "© 2026 AI Mawa International. All rights reserved.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                const Text("Our Work", style: TextStyle(color: Colors.white70)),

                const SizedBox(height: 8),

                const Text(
                  "Terms & CondSitions / Policy",
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 24),

                Row(
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
                    const SizedBox(width: 18),
                    IconButton(
                      onPressed: () {
                        launchURL(
                          "https://www.youtube.com/@Al.mawagrowthacademy",
                        );
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                     const SizedBox(width: 18),
                    IconButton(
                      onPressed: () {
                        launchURL(
                          "https://www.facebook.com/almawainternational",
                        );
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
