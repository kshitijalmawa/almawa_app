import 'package:almawa_app/screens/about_screen.dart';
import 'package:almawa_app/widget/benifit_item_card.dart';
import 'package:almawa_app/widget/call_to_action_button.dart';
import 'package:almawa_app/widget/service_card.dart';
import 'package:flutter/material.dart';

class AiServices extends StatelessWidget {
  const AiServices({super.key});

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
                      '𝖠𝖨 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐇𝐚𝐫𝐧𝐞𝐬𝐬 𝐭𝐡𝐞 𝐩𝐨𝐰𝐞𝐫 𝐨𝐟 𝐚𝐫𝐭𝐢𝐟𝐢𝐜𝐢𝐚𝐥 𝐢𝐧𝐭𝐞𝐥𝐥𝐢𝐠𝐞𝐧𝐜𝐞 𝐭𝐨 𝐭𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐨𝐩𝐞𝐫𝐚𝐭𝐢𝐨𝐧𝐬 𝐚𝐧𝐝 𝐝𝐫𝐢𝐯𝐞 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐨𝐧. 𝐎𝐮𝐫 𝐜𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐀𝐈 𝐬𝐞𝐫𝐯𝐢𝐜𝐞𝐬 𝐡𝐞𝐥𝐩 𝐲𝐨𝐮 𝐥𝐞𝐯𝐞𝐫𝐚𝐠𝐞 𝐜𝐮𝐭𝐭𝐢𝐧𝐠-𝐞𝐝𝐠𝐞 𝐭𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲 𝐟𝐨𝐫 𝐜𝐨𝐦𝐩𝐞𝐭𝐢𝐭𝐢𝐯𝐞 𝐚𝐝𝐯𝐚𝐧𝐭𝐚𝐠𝐞.',
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
                        '𝖮𝗎𝗋 𝖠𝖨 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.psychology,
                      badgeText: 'AI Service',
                      title: 'Machine Learning (ML) Services',
                      description:
                          'Advanced machine learning solutions to automate processes and extract insights from your data',
                      features: const [
                        'Predictive Analytics',
                        'Classification Models',
                        'Recommendation Systems',
                        'Anomaly Detection',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.smart_toy_outlined,
                      badgeText: 'Ai Service',
                      title: 'Natural Language Processing (NLP) Services',
                      description:
                          'Intelligent text processing and language understanding capabilities for your applications',
                      features: const [
                        'Text Analysis',
                        'Chatbots & Virtual Assistants',
                        'Sentiment Analysis',
                        'Language Translation',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.remove_red_eye_outlined,
                      badgeText: 'AI Service',
                      title: 'Computer Vision Services',
                      description:
                          'Advanced image and video analysis capabilities to automate visual tasks and extract insights',
                      features: const [
                        'Object Detection',
                        'Image Classification',
                        'Facial Recognition',
                        'Quality Inspection',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.memory_sharp,
                      badgeText: 'AI Service',
                      title: 'Generative AI Services',
                      description:
                          'Cutting-edge generative AI solutions to create content, code, and innovative applications',
                      features: const [
                        'Content Generation',
                        'Code Automation',
                        'Creative Design',
                        'Synthetic Data',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.electric_bolt_outlined,
                      badgeText: 'AI Service',
                      title: 'AI Automation Services',
                      description:
                          'Intelligent automation solutions to streamline workflows and increase operational efficiency',
                      features: const [
                        'Process Automation',
                        'Intelligent Document Processing',
                        'Workflow Optimization',
                        'RPA Integration',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.insert_chart_outlined,
                      badgeText: 'AI Service',
                      title: 'Data & Analytics AI Services',
                      description:
                          'AI-powered analytics and insights to drive data-driven decision making across your organization',
                      features: const [
                        'Predictive Analytics',
                        'Business Intelligence',
                        'Data Visualization',
                        'Real-time Insights',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.shield_outlined,
                      badgeText: 'AI Service',
                      title: 'AI in Cybersecurity',
                      description:
                          'Advanced AI-driven security solutions to protect your digital assets and detect threats',
                      features: const [
                        'Threat Detection',
                        'Behavioral Analysis',
                        'Security Automation',
                        'Risk Assessment',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.business,
                      badgeText: 'AI Service',
                      title: 'Industry-Specific AI Solutions',
                      description:
                          'Tailored AI solutions designed for specific industries and business verticals',
                      features: const [
                        'Healthcare AI',
                        'Financial Services',
                        'Manufacturing',
                        'Retail & E-commerce',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.dns_outlined,
                      badgeText: 'AI Service',
                      title: 'AI Infrastructure & MLOps',
                      description:
                          'Robust AI infrastructure and MLOps practices to deploy and manage AI models at scale',
                      features: const [
                        'Model Deployment',
                        'Pipeline Automation',
                        'Monitoring & Maintenance',
                        'Scalable Infrastructure',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.school_sharp,
                      badgeText: 'AI Service',
                      title: 'AI Training & Support',
                      description:
                          'Comprehensive training and ongoing support to help your team leverage AI technologies effectively',
                      features: const [
                        'Team Training',
                        'Best Practices',
                        'Technical Support',
                        'Knowledge Transfer',
                      ],
                      onEnquire: () {
                        debugPrint('Web Development Enquire tapped');
                      },
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '𝖶𝗁𝗒 𝖢𝗁𝗈𝗈𝗌𝖾 𝖮𝗎𝗋 𝖠𝖨 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌?',
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
                        '𝐓𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐰𝐢𝐭𝐡 𝐢𝐧𝐭𝐞𝐥𝐥𝐢𝐠𝐞𝐧𝐭 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐝𝐞𝐬𝐢𝐠𝐧𝐞𝐝 𝐟𝐨𝐫 𝐭𝐡𝐞 𝐟𝐮𝐭𝐮𝐫𝐞',
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
                                'Expert AI guidance from experienced industry professionals',
                          ),
                          BenefitItemCard(
                            text:
                                'Customized AI solutions tailored to your specific business needs',
                          ),
                          BenefitItemCard(
                            text:
                                'Reduced implementation risks through proven AI methodologies',
                          ),
                          BenefitItemCard(
                            text: 'Faster AI deployment with structured project management',
                          ),
                          BenefitItemCard(
                            text:
                                'Cost optimization through strategic AI planning and resource allocation',
                          ),
                          BenefitItemCard(
                            text:
                                'Access to latest AI trends and emerging technologies',
                          ),
                          BenefitItemCard(
                            text:
                                'Scalable AI infrastructure designed for growth',
                          ),
                          BenefitItemCard(
                            text:
                                'Strategic alignment between AI initiatives and business objectives',
                          ),
                          BenefitItemCard(
                            text:
                                'Ongoing AI support and knowledge transfer to your team',
                          ),
                          BenefitItemCard(
                            text:
                                'Measurable AI results with clear KPIs and success metrics',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 62),
                    Text(
                      '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖳𝗋𝖺𝗇𝗌𝖿𝗈𝗋𝗆 𝖸𝗈𝗎𝗋 𝖡𝗎𝗌𝗂𝗇𝖾𝗌𝗌 𝗐𝗂𝗍𝗁 𝖠𝖨?',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Let our AI experts help you harness the power of artificial intelligence to drive innovation and growth. Start your AI transformation today and unlock new possibilities for your business.',
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
                      primaryText: 'Start AI Project',
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

                          // Email
                          Row(
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

                          const SizedBox(height: 12),

                          // Phone
                          Row(
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

                          const SizedBox(height: 12),

                          // Location
                          Row(
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

                          // Social Icons
                          Row(
                            children: const [
                              Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 28,
                              ), // X
                              SizedBox(width: 24),
                              Icon(
                                Icons.link,
                                color: Colors.white,
                                size: 28,
                              ), // LinkedIn
                              SizedBox(width: 24),
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 28,
                              ), // Instagram
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
