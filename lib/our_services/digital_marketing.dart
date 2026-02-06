import 'package:almawa_app/screens/about_screen.dart';
import 'package:almawa_app/widget/benifit_item_card.dart';
import 'package:almawa_app/widget/call_to_action_button.dart';
import 'package:almawa_app/widget/enquiry_dialog.dart';
import 'package:almawa_app/widget/marketing_stat_card.dart';
import 'package:almawa_app/widget/service_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DigitalMarketing extends StatelessWidget {
  const DigitalMarketing({super.key});

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
                      '𝖣𝗂𝗀𝗂𝗍𝖺𝗅 𝖬𝖺𝗋𝗄𝖾𝗍𝗂𝗇𝗀',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐂𝐨𝐧𝐧𝐞𝐜𝐭 𝐰𝐢𝐭𝐡 𝐲𝐨𝐮𝐫 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐭𝐡𝐫𝐨𝐮𝐠𝐡 𝐩𝐨𝐰𝐞𝐫𝐟𝐮𝐥 𝐞𝐦𝐚𝐢𝐥, 𝐖𝐡𝐚𝐭𝐬𝐀𝐩𝐩, 𝐚𝐧𝐝 𝐒𝐌𝐒 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠 𝐜𝐚𝐦𝐩𝐚𝐢𝐠𝐧𝐬. 𝐃𝐫𝐢𝐯𝐞 𝐞𝐧𝐠𝐚𝐠𝐞𝐦𝐞𝐧𝐭 𝐚𝐧𝐝 𝐛𝐨𝐨𝐬𝐭 𝐜𝐨𝐧𝐯𝐞𝐫𝐬𝐢𝐨𝐧𝐬 𝐰𝐢𝐭𝐡 𝐨𝐮𝐫 𝐢𝐧𝐭𝐞𝐠𝐫𝐚𝐭𝐞𝐝 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '𝖬𝖺𝗋𝗄𝖾𝗍𝗂𝗇𝗀 𝖳𝗁𝖺𝗍 𝖣𝖾𝗅𝗂𝗏𝖾𝗋𝗌 𝖱𝖾𝗌𝗎𝗅𝗍𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 34),

                    MarketingStatCard(
                      icon: Icons.email_outlined,
                      title: '4.1 Billion',
                      subtitle: 'Email users worldwide',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.chat_bubble_outline,
                      title: '2+ Billion',
                      subtitle: 'WhatsApp active users',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.smartphone,
                      title: '98%',
                      subtitle: 'SMS sent daily',
                    ),
                    const SizedBox(height: 20),
                    MarketingStatCard(
                      icon: Icons.trending_up,
                      title: '4200%',
                      subtitle: 'Average ROI for email marketing',
                    ),
                    SizedBox(height: 66),
                    Text(
                      '𝖮𝗎𝗋 𝖣𝗂𝗀𝗂𝗍𝖺𝗅 𝖬𝖺𝗋𝗄𝖾𝗍𝗂𝗇𝗀 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐂𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐚𝐜𝐫𝐨𝐬𝐬 𝐦𝐮𝐥𝐭𝐢𝐩𝐥𝐞 𝐜𝐡𝐚𝐧𝐧𝐞𝐥𝐬',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ServiceCard(
                      icon: Icons.email_outlined,
                      badgeText: 'Marketing',
                      title: 'Email Marketing Services',
                      description:
                          'Professional email campaigns that engage your audience and drive conversions',
                      features: const [
                        'Campaign Design',
                        'Automated Sequences',
                        'A/B Testing',
                        'Performance Analytics',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    ServiceCard(
                      icon: Icons.messenger_outline_outlined,
                      badgeText: 'Marketing',
                      title: 'WhatsApp Marketing Services',
                      description:
                          'Direct customer engagement through WhatsApp Business with personalized messaging',
                      features: const [
                        'Business API Setup',
                        'Broadcast Messages',
                        'Customer Support',
                        'Automated Responses',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    ServiceCard(
                      icon: Icons.smartphone,
                      badgeText: 'Marketing',
                      title: 'SMS Marketing Services',
                      description:
                          'Instant reach with targeted SMS campaigns for time-sensitive promotions and updates',
                      features: const [
                        'Bulk SMS Campaigns',
                        'Personalized Messages',
                        'Delivery Reports',
                        'Opt-in Management',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    ServiceCard(
                      icon: Icons.account_tree,
                      badgeText: 'Marketing',
                      title: 'Omnichannel IntegrationSMS Marketing Services',
                      description:
                          'Seamless integration across all marketing channels for consistent customer experience',
                      features: const [
                        'Cross-platform Campaigns',
                        'Unified Analytics',
                        'Customer Journey Mapping',
                        'Synchronized Messaging',
                      ],
                       onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    ServiceCard(
                      icon: Icons.check_circle_outline,
                      badgeText: 'Marketing',
                      title: 'Benefits of Email, WhatsApp & SMS Marketing',
                      description:
                          'Comprehensive advantages of multi-channel marketing approach for business growth',
                      features: const [
                        'Higher Engagement',
                        'Direct Communication',
                        'Cost-Effective',
                        'Measurable Results',
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
                        '𝖡𝖾𝗇𝖾𝖿𝗂𝗍𝗌 𝗈𝖿 𝖤𝗆𝖺𝗂𝗅, 𝖶𝗁𝖺𝗍𝗌𝖠𝗉𝗉 & 𝖲𝖬𝖲 𝖬𝖺𝗋𝗄𝖾𝗍𝗂𝗇𝗀',
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
                        '𝐖𝐡𝐲 𝐦𝐮𝐥𝐭𝐢-𝐜𝐡𝐚𝐧𝐧𝐞𝐥 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠 𝐢𝐬 𝐞𝐬𝐬𝐞𝐧𝐭𝐢𝐚𝐥 𝐟𝐨𝐫 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐠𝐫𝐨𝐰𝐭𝐡',
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
                                'Direct communication with customers through their preferred channels',
                          ),
                          BenefitItemCard(
                            text:
                                'Higher engagement rates compared to traditional advertising',
                          ),
                          BenefitItemCard(
                            text:
                                'Cost-effective marketing with measurable ROI',
                          ),
                          BenefitItemCard(
                            text:
                                'Personalized messaging based on customer behavior and preferences',
                          ),
                          BenefitItemCard(
                            text:
                                'Real-time delivery and instant customer feedback',
                          ),
                          BenefitItemCard(
                            text:
                                'Automated campaigns that save time and increase efficiency',
                          ),
                          BenefitItemCard(
                            text:
                                'Detailed analytics and reporting for campaign optimization',
                          ),
                          BenefitItemCard(
                            text:
                                'Increased customer retention through regular engagement',
                          ),
                          BenefitItemCard(
                            text:
                                'Global reach with local personalization capabilities',
                          ),
                          BenefitItemCard(
                            text:
                                'Integration with existing CRM and marketing tools',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖡𝗈𝗈𝗌𝗍 𝖸𝗈𝗎𝗋 𝖬𝖺𝗋𝗄𝖾𝗍𝗂𝗇𝗀 𝖱𝖾𝗌𝗎𝗅𝗍𝗌?',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐒𝐭𝐚𝐫𝐭 𝐜𝐨𝐧𝐧𝐞𝐜𝐭𝐢𝐧𝐠 𝐰𝐢𝐭𝐡 𝐲𝐨𝐮𝐫 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫𝐬 𝐭𝐡𝐫𝐨𝐮𝐠𝐡 𝐩𝐨𝐰𝐞𝐫𝐟𝐮𝐥 𝐞𝐦𝐚𝐢𝐥, 𝐖𝐡𝐚𝐭𝐬𝐀𝐩𝐩, 𝐚𝐧𝐝 𝐒𝐌𝐒 𝐜𝐚𝐦𝐩𝐚𝐢𝐠𝐧𝐬. 𝐋𝐞𝐭\'𝐬 𝐜𝐫𝐞𝐚𝐭𝐞 𝐚 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠 𝐬𝐭𝐫𝐚𝐭𝐞𝐠𝐲 𝐭𝐡𝐚𝐭 𝐝𝐫𝐢𝐯𝐞𝐬 𝐫𝐞𝐚𝐥 𝐫𝐞𝐬𝐮𝐥𝐭𝐬.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    CallToActionButtons(
                      primaryText: 'Start marketing Campaign',
                      secondaryText: 'Learn More About Us',
                      onPrimaryTap: () {
                        debugPrint('Consultation tapped');
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
