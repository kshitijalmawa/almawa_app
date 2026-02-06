import 'package:almawa_app/screens/about_screen.dart';
import 'package:almawa_app/screens/careers_screen.dart';
import 'package:almawa_app/screens/our_service_drawer_screen.dart';
import 'package:almawa_app/screens/our_work_screen.dart';
import 'package:almawa_app/testimonials/directors_desk.dart';
import 'package:almawa_app/testimonials/testimonials.dart';
import 'package:almawa_app/widget/service_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          padding: const EdgeInsets.only(left: 18),
          child: Row(
            children: [Image.asset('assets/images/logoblack.png', height: 64)],
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: _buildDrawer(context),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    height: 1.2,
                  ),
                  children: const [
                    TextSpan(
                      text: "TRY. TRUST.\nTRANSFORM",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "𝐄𝐦𝐩𝐨𝐰𝐞𝐫𝐢𝐧𝐠 𝐁𝐮𝐬𝐢𝐧𝐞𝐬𝐬𝐞𝐬,\n𝐓𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦𝐢𝐧𝐠",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: const Text(
                  "“𝐂𝐮𝐫𝐚𝐭𝐢𝐧𝐠 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐞𝐱𝐩𝐞𝐫𝐢𝐞𝐧𝐜𝐞 𝐚𝐧𝐝 𝐜𝐨𝐧𝐯𝐞𝐲𝐢𝐧𝐠 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐟𝐨𝐫 𝐛𝐫𝐢𝐠𝐡𝐭𝐞𝐫 𝐟𝐮𝐭𝐮𝐫𝐞.”",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "AL MAWA\nINTERNATIONAL",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "At AL-MAWA International we see technology as a strategic bridge that empowers people and accelerates growth. We partner with businesses to design tailored digital strategies, delivering measurable outcomes through innovation, reliability, and a commitment to excellence.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 24),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          "assets/images/team_discuss.png",
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/demo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "OUR MISSION",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "Guided by the belief that technology's greatest value is its human impact, we deliver smart, sustainable IT solutions that transform how businesses operate. Our mission is to blend creativity with engineering to build solutions that scale, perform, and create lasting business value.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 24),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          "assets/images/our_mission.jpg",
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "OUR VALUES",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "We value honesty, collaboration, and continuous improvement. Our work focuses on building sustainable, intelligent solutions that drive growth, empower teams, and create meaningful outcomes for our clients.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 24),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          "assets/images/our_values2.jpg",
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "WHAT WE CREATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "“Tansforming businesses through technology, insight, and integrated solutions“ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              ServiceCardWidget(
                icon: Icons.code,
                iconColor: const Color(0xFF2D9CFF),
                title: "Web Development",
                description:
                    "Creating modern, responsive websites and web applications that drive business growth and engagement.",
                points: const [
                  "Website Design",
                  "E-commerce Development",
                  "Web Hosting",
                  "SEO Integration",
                ],
                onTap: () {},
              ),
              ServiceCardWidget(
                icon: Icons.settings,
                iconColor: Colors.blueGrey,
                title: "IT & Tech Services",
                description:
                    "Comprehensive IT solutions including infrastructure, cybersecurity and cloud support.",
                points: const [
                  "Infrastructure Services",
                  "Cybersecurity",
                  "Managed IT",
                  "Cloud Solutions",
                ],
                onTap: () {},
              ),

              // ✅ Digital Marketing Card
              ServiceCardWidget(
                icon: Icons.campaign,
                iconColor: const Color(0xFF19C37D),
                title: "Digital Marketing",
                description:
                    "Strategic marketing campaigns including email, WhatsApp and SMS marketing.",
                points: const [
                  "Email Marketing",
                  "WhatsApp Marketing",
                  "SMS Campaigns",
                  "Analytics",
                ],
                onTap: () {},
              ),

              ServiceCardWidget(
                icon: Icons.brush,
                iconColor: Colors.pinkAccent,
                title: "Graphic Design",
                description:
                    "Professional branding and design services to create compelling visual identities.",
                points: const [
                  "Brand Identity",
                  "Marketing Design",
                  "Digital Graphics",
                  "Print Design",
                ],
                onTap: () {},
              ),

              ServiceCardWidget(
                icon: Icons.psychology,
                iconColor: const Color(0xFF3D5AFE),
                title: "AI Services",
                description:
                    "Machine learning, automation and AI-powered solutions to modernize your business.",
                points: const [
                  "Machine Learning",
                  "Computer Vision",
                  "Generative AI",
                  "AI Automation",
                ],
                onTap: () {},
              ),

              // ✅ Cloud Solutions Card
              ServiceCardWidget(
                icon: Icons.cloud_outlined,
                iconColor: Colors.lightBlue,
                title: "Cloud Solutions",
                description:
                    "Scalable cloud infrastructure ensuring reliability, security and cost efficiency.",
                points: const [
                  "Cloud Migration",
                  "Cloud Infrastructure",
                  "Disaster Recovery",
                  "Cloud Optimization",
                ],
                onTap: () {},
              ),

              SizedBox(height: 36),
              const Text(
                "VOICES FROM \nTHE DESK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 14.0),
                  child: Text(
                    '𝐏𝐑𝐎𝐅𝐄𝐒𝐒𝐈𝐎𝐍𝐀𝐋 𝐏𝐄𝐑𝐒𝐏𝐄𝐂𝐓𝐈𝐕𝐄𝐒 𝐃𝐄𝐒𝐈𝐆𝐍𝐄𝐃 𝐓𝐎 𝐈𝐍𝐅𝐎𝐑𝐌, 𝐈𝐍𝐒𝐏𝐈𝐑𝐄, 𝐀𝐍𝐃 𝐄𝐌𝐏𝐎𝐖𝐄𝐑',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                color: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logowhite.png",
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    const Text(
                      "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 28),
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
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
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
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
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
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.white24),

                    const SizedBox(height: 20),

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
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/logoblack.png',
                    height: 44,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.black87),
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              const Divider(color: Colors.black12),

              const SizedBox(height: 20),

              _drawerItem(
                Icons.home_outlined,
                'Home',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              _drawerItem(
                Icons.info_outline,
                'About',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  );
                },
              ),
              _drawerItem(
                Icons.work_history_outlined,
                'Our Work',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurWorkScreen()),
                  );
                },
              ),
              _drawerItem(
                Icons.work_outline,
                'Our Services',
                trailing: true,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OurServicesDrawerScreen(),
                    ),
                  );
                },
              ),

              _drawerItem(
                Icons.card_travel,
                'Careers',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CareersScreen()),
                  );
                },
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                childrenPadding: const EdgeInsets.only(left: 55),

                leading: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black87,
                  size: 22,
                ),

                title: const Text(
                  "Testimonials",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                trailing: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black38,
                ),

                children: [
                  _subDrawerItem(
                    "Testimonials",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Testimonials()),
                      );
                    },
                  ),
                  _subDrawerItem(
                    "Directors Desk",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DirectorsDesk(),
                        ),
                      );
                    },
                  ),
                ],
              ),

              const Spacer(),

              const Divider(color: Colors.black12),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Language', style: TextStyle(color: Colors.black54)),
                    SizedBox(height: 6),
                    Text('English', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: BorderSide(color: Colors.blue.shade200),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                '© 2026 AI Mawa International',
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(
    IconData icon,
    String title, {
    bool trailing = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18, top: 4),
        child: Row(
          children: [
            Icon(icon, color: Colors.black87, size: 22),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (trailing)
              const Icon(Icons.chevron_right, color: Colors.black38),
          ],
        ),
      ),
    );
  }
}

Widget _subDrawerItem(String title, {VoidCallback? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
