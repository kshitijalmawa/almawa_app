import 'package:almawa_app/screens/about_screen.dart';
import 'package:almawa_app/widget/benifit_item_card.dart';
import 'package:almawa_app/widget/call_to_action_button.dart';
import 'package:almawa_app/widget/enquiry_dialog.dart';
import 'package:almawa_app/widget/service_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ITAndTechServicesScreen extends StatelessWidget {
  const ITAndTechServicesScreen({super.key});

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
                      '𝖨𝖳 & 𝖳𝖾𝖼𝗁',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐂𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐈𝐓 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐚𝐧𝐝 𝐭𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲 𝐬𝐞𝐫𝐯𝐢𝐜𝐞𝐬 𝐭𝐨 𝐩𝐨𝐰𝐞𝐫 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐟𝐨𝐫𝐰𝐚𝐫𝐝. 𝐅𝐫𝐨𝐦 𝐢𝐧𝐟𝐫𝐚𝐬𝐭𝐫𝐮𝐜𝐭𝐮𝐫𝐞 𝐭𝐨 𝐞𝐦𝐞𝐫𝐠𝐢𝐧𝐠 𝐭𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐢𝐞𝐬,  𝐰𝐞\'𝐯𝐞 𝐠𝐨𝐭 𝐲𝐨𝐮 𝐜𝐨𝐯𝐞𝐫𝐞𝐝',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '𝖢𝗈𝗆𝗉𝗅𝖾𝗍𝖾 𝖨𝖳 & 𝖳𝖾𝖼𝗁𝗇𝗈𝗅𝗈𝗀𝗒 𝖲𝗈𝗅𝗎𝗍𝗂𝗈𝗇𝗌',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.check_circle_outline,
                      badgeText: 'Service',
                      title: 'IT & Tech Services - Complete Details',
                      description:
                          'Comprehensive overview of all our IT and technology service offerings',
                      features: const [
                        'Service Portfolio',
                        'Technology Stack',
                        'Implementation Process',
                        'Support Structure',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.dns_outlined,
                      badgeText: 'Service',
                      title: 'Infrastructure Services',
                      description:
                          'Robust IT infrastructure solutions for scalable and reliable business operations',
                      features: const [
                        'Network Setup',
                        'Server Management',
                        'Hardware Installation',
                        'System Architecture',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.settings_outlined,
                      badgeText: 'Service',
                      title: 'Managed IT Services',
                      description:
                          'Complete IT management and monitoring to keep your systems running smoothly',
                      features: const [
                        '24/7 Monitoring',
                        'Proactive Maintenance',
                        'System Updates',
                        'Performance Optimization',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.cloud_outlined,
                      badgeText: 'Service',
                      title: 'Cloud & DevOps Services',
                      description:
                          'Modern cloud solutions and DevOps practices for efficient development and deployment',
                      features: const [
                        'Cloud Migration',
                        'DevOps Implementation',
                        'CI/CD Pipelines',
                        'Container Management',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.code,
                      badgeText: 'Service',
                      title: 'Software Development Services',
                      description:
                          'Custom software solutions tailored to your specific business requirements',
                      features: const [
                        'Custom Applications',
                        'System Integration',
                        'API Development',
                        'Legacy Modernization',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.people_outline_outlined,
                      badgeText: 'Service',
                      title: 'IT Consulting & Advisory',
                      description:
                          'Strategic IT guidance to align technology with your business objectives',
                      features: const [
                        'Technology Strategy',
                        'Digital Transformation',
                        'IT Planning',
                        'Risk Assessment',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.insert_chart_outlined,
                      badgeText: 'Service',
                      title: 'Data & Analytics Services',
                      description:
                          'Transform your data into actionable insights for better business decisions',
                      features: const [
                        'Data Analysis',
                        'Business Intelligence',
                        'Reporting Solutions',
                        'Data Visualization',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.messenger_outline_outlined,
                      badgeText: 'Service',
                      title: 'Communication & Collaboration Services',
                      description:
                          'Modern communication tools and collaboration platforms for remote teams',
                      features: const [
                        'Video Conferencing',
                        'Team Collaboration',
                        'Document Sharing',
                        'Remote Access',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.headphones_outlined,
                      badgeText: 'Service',
                      title: 'IT Support & Helpdesk Services',
                      description:
                          'Comprehensive technical support and helpdesk services for your IT needs',
                      features: const [
                        'Technical Support',
                        'Issue Resolution',
                        'User Training',
                        'Documentation',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.electric_bolt_outlined,
                      badgeText: 'Service',
                      title: 'Emerging Technology Services',
                      description:
                          'Cutting-edge technology solutions including AI, IoT, and blockchain implementations',
                      features: const [
                        'AI Integration',
                        'IoT Solutions',
                        'Blockchain Development',
                        'Automation Tools',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.check_circle_outline,
                      badgeText: 'Service',
                      title: 'Benefits of IT & Tech Services',
                      description:
                          'Key advantages and benefits of implementing our IT and technology services',
                      features: const [
                        'Cost Reduction',
                        'Enhanced Security',
                        'Improved Productivity',
                        'Strategic Growth',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 40),
                    Text(
                      '𝖡𝖾𝗇𝖾𝖿𝗂𝗍𝗌 𝗈𝖿 𝖮𝗎𝗋 𝖨𝖳 & 𝖳𝖾𝖼𝗁 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Transform your business with our comprehensive IT solutions',
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
                                'Reduced IT costs through efficient managed services',
                          ),
                          BenefitItemCard(
                            text:
                                'Enhanced security with advanced cybersecurity measures',
                          ),
                          BenefitItemCard(
                            text:
                                'Improved productivity with reliable IT infrastructure',
                          ),
                          BenefitItemCard(
                            text: '24/7 technical support and monitoring',
                          ),
                          BenefitItemCard(
                            text:
                                'Scalable solutions that grow with your business',
                          ),
                          BenefitItemCard(
                            text:
                                'Access to latest technologies and best practices',
                          ),
                          BenefitItemCard(
                            text:
                                'Compliance with industry standards and regulations',
                          ),
                          BenefitItemCard(
                            text:
                                'Strategic IT planning aligned with business goals',
                          ),
                          BenefitItemCard(
                            text:
                                'Faster issue resolution and minimal downtime',
                          ),
                          BenefitItemCard(
                            text:
                                'Expert guidance from certified IT professionals',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 62),
                    Text(
                      '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖴𝗉𝗀𝗋𝖺𝖽𝖾 𝖸𝗈𝗎𝗋 𝖨𝖳 𝖨𝗇𝖿𝗋𝖺𝗌𝗍𝗋𝗎𝖼𝗍𝗎𝗋𝖾?',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Let our IT experts help you build a robust, secure, and scalable technology foundation. Contact us today for a comprehensive IT assessment.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    CallToActionButtons(
                      primaryText: 'Get IT Consultation',
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
