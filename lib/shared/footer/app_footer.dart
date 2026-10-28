import 'package:almawa_app/shared/footer/terms_&_condition.dart';
import 'package:almawa_app/shared/images/shared_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      color: Color(0xFFEDFBFE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                heightFactor: 1.2,
                child: SvgPicture.asset(
                  SharedImages.alMawaLogo,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
              style: TextStyle(color: Colors.black, fontSize: 14, height: 1.6),
            ),
          ),

          const SizedBox(height: 28),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "CONTACT INFO",
              style: TextStyle(
                color: Colors.black,
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
                  Icon(Icons.email_outlined, color: Colors.black, size: 20),
                  SizedBox(width: 12),
                  Text(
                    "business@al-mawa.international",
                    style: TextStyle(color: Colors.black, fontSize: 14),
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
                  Icon(Icons.phone_outlined, color: Colors.black, size: 20),
                  SizedBox(width: 12),
                  Text(
                    "+91 9561179693 | 9511991736",
                    style: TextStyle(color: Colors.black, fontSize: 14),
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
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "AL-MAWA INTERNATIONAL PUNE Location",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.black),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "© 2026 AI Mawa International. All rights reserved.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                const Text("Our Work", style: TextStyle(color: Colors.black)),

                const SizedBox(height: 8),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermsAndConditionScreen(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Terms & Conditions / Policy",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                Wrap(
                  children: [
                    IconButton(
                      onPressed: () {
                        launchURL("https://x.com/al_mawa__");
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.xTwitter,
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
