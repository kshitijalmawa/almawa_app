import 'package:almawa_app/screens/about_screen.dart';
import 'package:almawa_app/widget/benifit_item_card.dart';
import 'package:almawa_app/widget/call_to_action_button.dart';
import 'package:almawa_app/widget/enquiry_dialog.dart';
import 'package:almawa_app/widget/marketing_stat_card.dart';
import 'package:almawa_app/widget/service_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GraphicDesign extends StatelessWidget {
  const GraphicDesign({super.key});

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
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      '𝖦𝗋𝖺𝗉𝗁𝗂𝖼 𝖣𝖾𝗌𝗂𝗀𝗇',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐓𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦 𝐲𝐨𝐮𝐫 𝐛𝐫𝐚𝐧𝐝 𝐰𝐢𝐭𝐡 𝐬𝐭𝐮𝐧𝐧𝐢𝐧𝐠 𝐯𝐢𝐬𝐮𝐚𝐥 𝐝𝐞𝐬𝐢𝐠𝐧𝐬 𝐭𝐡𝐚𝐭 𝐜𝐚𝐩𝐭𝐢𝐯𝐚𝐭𝐞 𝐚𝐮𝐝𝐢𝐞𝐧𝐜𝐞𝐬 𝐚𝐧𝐝 𝐝𝐫𝐢𝐯𝐞 𝐫𝐞𝐬𝐮𝐥𝐭𝐬. 𝐅𝐫𝐨𝐦 𝐛𝐫𝐚𝐧𝐝𝐢𝐧𝐠 𝐭𝐨 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐠𝐫𝐚𝐩𝐡𝐢𝐜𝐬, 𝐰𝐞 𝐜𝐫𝐞𝐚𝐭𝐞 𝐝𝐞𝐬𝐢𝐠𝐧𝐬 𝐭𝐡𝐚𝐭 𝐦𝐚𝐤𝐞 𝐚𝐧 𝐢𝐦𝐩𝐚𝐜𝐭.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '𝖳𝗁𝖾 𝖯𝗈𝗐𝖾𝗋 𝗈𝖿 𝖵𝗂𝗌𝗎𝖺𝗅 𝖣𝖾𝗌𝗂𝗀𝗇',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),

                    MarketingStatCard(
                      icon: Icons.color_lens_outlined,
                      title: '94%',
                      subtitle: 'First impressions are design-related',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.share_outlined,
                      title: '3x',
                      subtitle: 'More likely to share visual content',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.monitor,
                      title: '65%',
                      subtitle: 'Of people are visual learners',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.trending_up,
                      title: '80%',
                      subtitle: 'Brand recognition increase with color',
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '𝖮𝗎𝗋 𝖦𝗋𝖺𝗉𝗁𝗂𝖼 𝖣𝖾𝗌𝗂𝗀𝗇 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
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
                        '𝐂𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐝𝐞𝐬𝐢𝐠𝐧 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐟𝐨𝐫 𝐚𝐥𝐥 𝐲𝐨𝐮𝐫 𝐯𝐢𝐬𝐮𝐚𝐥 𝐜𝐨𝐦𝐦𝐮𝐧𝐢𝐜𝐚𝐭𝐢𝐨𝐧 𝐧𝐞𝐞𝐝𝐬',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.color_lens_outlined,
                      badgeText: 'Design',
                      title: 'Brand Identity Design',
                      description:
                          'Complete brand identity systems including logos, color palettes, and brand guidelines',
                      features: const [
                        'Logo Design',
                        'Brand Guidelines',
                        'Color Schemes',
                        'Typography Selection',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.campaign,
                      badgeText: 'Design',
                      title: 'Marketing & Promotional Design',
                      description:
                          'Eye-catching marketing materials that drive engagement and boost conversions',
                      features: const [
                        'Flyers & Brochures',
                        'Banners & Posters',
                        'Advertisement Design',
                        'Promotional Graphics',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.share_outlined,
                      badgeText: 'Design',
                      title: 'Digital & Social Media Design',
                      description:
                          'Engaging digital graphics optimized for social media platforms and online presence',
                      features: const [
                        'Social Media Posts',
                        'Cover Images',
                        'Digital Ads',
                        'Web Graphics',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.monitor,
                      badgeText: 'Design',
                      title: 'UI/UX & Web Graphics',
                      description:
                          'User-friendly interface designs and web graphics that enhance user experience',
                      features: const [
                        'Website Graphics',
                        'UI Elements',
                        'Icons & Illustrations',
                        'User Interface Design',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.mobile_friendly_outlined,
                      badgeText: 'Design',
                      title: 'Corporate & Office Branding',
                      description:
                          'Professional corporate identity and office branding solutions for businesses',
                      features: const [
                        'Business Cards',
                        'Letterheads',
                        'Office Signage',
                        'Corporate Presentations',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.play_arrow_outlined,
                      badgeText: 'Design',
                      title: 'Motion Graphics & Multimedia Design',
                      description:
                          'Dynamic motion graphics and multimedia content for engaging visual storytelling',
                      features: const [
                        'Animated Graphics',
                        'Video Graphics',
                        'GIF Creation',
                        'Interactive Media',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.brush_outlined,
                      badgeText: 'Design',
                      title: 'Illustration & Creative Art',
                      description:
                          'Custom illustrations and creative artwork tailored to your brand and message',
                      features: const [
                        'Custom Illustrations',
                        'Digital Art',
                        'Character Design',
                        'Infographics',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.note_outlined,
                      badgeText: 'Design',
                      title: 'Print & Publishing Design',
                      description:
                          'Professional print design services for books, magazines, and marketing materials',
                      features: const [
                        'Book Design',
                        'Magazine Layout',
                        'Catalog Design',
                        'Print Materials',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.inventory_2_outlined,
                      badgeText: 'Design',
                      title: 'Packaging & Product Branding',
                      description:
                          'Attractive packaging design and product branding that stands out on shelves',
                      features: const [
                        'Product Packaging',
                        'Label Design',
                        'Brand Applications',
                        'Product Graphics',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.trending_up,
                      badgeText: 'Design',
                      title: 'Emerging Graphic Design Trends',
                      description:
                          'Cutting-edge design approaches using the latest trends and technologies',
                      features: const [
                        'Modern Design Trends',
                        '3D Graphics',
                        'AR/VR Graphics',
                        'Interactive Design',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.check_circle_outline,
                      badgeText: 'Design',
                      title: 'Benefits of Branding & Graphic Design Services',
                      description:
                          'Key advantages of professional branding and graphic design for business success',
                      features: const [
                        'Brand Recognition',
                        'Professional Image',
                        'Marketing Effectiveness',
                        'Customer Trust',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '𝖡𝖾𝗇𝖾𝖿𝗂𝗍𝗌 𝗈𝖿 𝖡𝗋𝖺𝗇𝖽𝗂𝗇𝗀 & 𝖦𝗋𝖺𝗉𝗁𝗂𝖼 𝖣𝖾𝗌𝗂𝗀𝗇 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
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
                        '𝐇𝐨𝐰 𝐩𝐫𝐨𝐟𝐞𝐬𝐬𝐢𝐨𝐧𝐚𝐥 𝐝𝐞𝐬𝐢𝐠𝐧 𝐬𝐞𝐫𝐯𝐢𝐜𝐞𝐬 𝐜𝐚𝐧 𝐭𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: const [
                          BenefitItemCard(
                            text:
                                'Professional brand image that builds trust and credibility',
                          ),
                          BenefitItemCard(
                            text:
                                'Consistent visual identity across all marketing materials',
                          ),
                          BenefitItemCard(
                            text:
                                'Increased brand recognition and customer recall',
                          ),
                          BenefitItemCard(
                            text:
                                'Higher engagement rates with visually appealing content',
                          ),
                          BenefitItemCard(
                            text:
                                'Cost-effective design solutions for all business sizes',
                          ),
                          BenefitItemCard(
                            text:
                                'Fast turnaround times without compromising quality',
                          ),
                          BenefitItemCard(
                            text:
                                'Scalable designs that work across different platforms',
                          ),
                          BenefitItemCard(
                            text:
                                'Expert guidance on design trends and best practices',
                          ),
                          BenefitItemCard(
                            text:
                                'Custom solutions tailored to your specific needs',
                          ),
                          BenefitItemCard(
                            text:
                                'Ongoing design support and revisions included',
                          ),
                          SizedBox(height: 40),
                          Text(
                            '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖳𝗋𝖺𝗇𝗌𝖿𝗈𝗋𝗆 𝖸𝗈𝗎𝗋 𝖡𝗋𝖺𝗇𝖽?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              '𝐋𝐞𝐭 𝐨𝐮𝐫 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐞 𝐭𝐞𝐚𝐦 𝐛𝐫𝐢𝐧𝐠 𝐲𝐨𝐮𝐫 𝐯𝐢𝐬𝐢𝐨𝐧 𝐭𝐨 𝐥𝐢𝐟𝐞 𝐰𝐢𝐭𝐡 𝐬𝐭𝐮𝐧𝐧𝐢𝐧𝐠 𝐠𝐫𝐚𝐩𝐡𝐢𝐜 𝐝𝐞𝐬𝐢𝐠𝐧𝐬 𝐭𝐡𝐚𝐭 𝐦𝐚𝐤𝐞 𝐚𝐧 𝐢𝐦𝐩𝐚𝐜𝐭. 𝐒𝐭𝐚𝐫𝐭 𝐲𝐨𝐮𝐫 𝐝𝐞𝐬𝐢𝐠𝐧 𝐩𝐫𝐨𝐣𝐞𝐜𝐭 𝐭𝐨𝐝𝐚𝐲 𝐚𝐧𝐝 𝐬𝐞𝐞 𝐭𝐡𝐞 𝐝𝐢𝐟𝐟𝐞𝐫𝐞𝐧𝐜𝐞 𝐩𝐫𝐨𝐟𝐞𝐬𝐬𝐢𝐨𝐧𝐚𝐥 𝐝𝐞𝐬𝐢𝐠𝐧 𝐜𝐚𝐧 𝐦𝐚𝐤𝐞.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    CallToActionButtons(
                      primaryText: 'Start Design Project',
                      secondaryText: 'Learn More About Us',
                      onPrimaryTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const EnquiryDialog(),
                          ),
                        );
                      },
                      onSecondaryTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AboutScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 80),
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
                              launchURL(
                                "mailto:business@al-mawa.international",
                              );
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

                          // Copyright
                          const Text(
                            "© 2026 AI Mawa International. All rights reserved.",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
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
            ],
          ),
        ),
      ),
    );
  }
}
