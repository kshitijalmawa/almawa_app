import 'package:almawa_app/features/contact_us/contact_us_screen.dart';
import 'package:almawa_app/features/our_programs/screens/franchise/franchise_screen.dart';
import 'package:almawa_app/features/our_programs/screens/referral_and_commission/referral_and_commission.dart';
import 'package:almawa_app/features/our_programs/screens/traning_and_internship/traning_and_internship_screen.dart.dart';
import 'package:almawa_app/shared/images/shared_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../about/about_screen.dart';
import '../../career/careers_screen.dart';
import '../../our_work/demo_websites_screen.dart';
import '../../our_services/widget/our_service_drawer_screen.dart';
import '../../our_work/our_work_screen.dart';
import '../../testimonials/directors_desk.dart';
import '../../testimonials/testimonials.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Row(
                children: [
                  SvgPicture.asset(
                    SharedImages.alMawaLogo,
                    height: 55,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.black87),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            const Divider(color: Colors.black12),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      _drawerItem(
                        context,
                        Icons.home_outlined,
                        "Home",
                        onTap: () => Navigator.pop(context),
                      ),

                      _drawerItem(
                        context,
                        Icons.info_outline,
                        "About",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AboutScreen(),
                            ),
                          );
                        },
                      ),

                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: const EdgeInsets.only(left: 55),
                        leading: const Icon(Icons.work_outline),
                        title: const Text(
                          "Our Work",
                          style: TextStyle(fontSize: 18),
                        ),
                        children: [
                          _subDrawerItem(
                            context,
                            "Our Work",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => OurWorkScreen(),
                                ),
                              );
                            },
                          ),
                          _subDrawerItem(
                            context,
                            "Demo Websites",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DemoWebsitesScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),

                      _drawerItem(
                        context,
                        Icons.design_services_outlined,
                        "Our Services",
                        trailing: true,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const OurServicesDrawerScreen(),
                            ),
                          );
                        },
                      ),

                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: const EdgeInsets.only(left: 55),
                        leading: const Icon(Icons.code),
                        title: const Text(
                          "Our Programs",
                          style: TextStyle(fontSize: 18),
                        ),
                        children: [
                          _subDrawerItem(
                            context,
                            "Franchise",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => FranchiseScreen(),
                                ),
                              );
                            },
                          ),
                          _subDrawerItem(
                            context,
                            "Referral & Commission",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ReferralAndCommission(),
                                ),
                              );
                            },
                          ),
                          _subDrawerItem(
                            context,
                            "Training & Internship",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => TraningAndInternshipScreen(
                                    jobTitle: 'Training & Internship',
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),

                      _drawerItem(
                        context,
                        Icons.card_travel_outlined,
                        "Careers",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => CareersScreen()),
                          );
                        },
                      ),

                      ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: const EdgeInsets.only(left: 55),
                        leading: const Icon(Icons.chat_bubble_outline),
                        title: const Text(
                          "Testimonials",
                          style: TextStyle(fontSize: 18),
                        ),
                        children: [
                          _subDrawerItem(
                            context,
                            "Testimonials",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Testimonials(),
                                ),
                              );
                            },
                          ),
                          _subDrawerItem(
                            context,
                            "Director’s Desk",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DirectorsDesk(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const Divider(color: Colors.black12),
                            const SizedBox(height: 16),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF3851FF),
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                  final uri = Uri.parse(
                                    "https://www.al-mawa.international/referral",
                                  );
                                  if (!await launchUrl(
                                    uri,
                                    mode: LaunchMode.inAppBrowserView,
                                    browserConfiguration:
                                        const BrowserConfiguration(
                                      showTitle: true,
                                    ),
                                  )) {
                                    debugPrint("Could not launch $uri");
                                  }
                                },
                                child: const Text(
                                  "Refer & Earn 🎁",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 12),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEFF1F4),
                                  foregroundColor: Colors.black87,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ContactUsScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Contact Us",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 18),

                            const Center(
                              child: Text(
                                "© 2026 AL Mawa International",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
    BuildContext context,
    IconData icon,
    String title, {
    bool trailing = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            Icon(icon, size: 22, color: Colors.black87),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
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

  Widget _subDrawerItem(
    BuildContext context,
    String title, {
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.black87),
        ),
      ),
    );
  }
}
