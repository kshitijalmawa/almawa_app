import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:almawa_app/features/about/about_screen.dart';
import 'package:almawa_app/features/career/widget/benifit_item_card.dart';
import 'package:almawa_app/features/our_services/widget/call_to_action_button.dart';
import 'package:almawa_app/shared/enquiry/dialog/enquiry_dialog.dart';
import 'package:almawa_app/features/our_services/widget/service_card.dart';
import 'package:flutter/material.dart';

class WebDevlopmentScreen extends StatelessWidget {
  const WebDevlopmentScreen({super.key});

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
                child: SvgPicture.asset(
                  'assets/images/newlogo.svg',
                  height: 48,
                ),
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
                      '𝖶𝖤𝖡 𝖣𝖤𝖵𝖫𝖮𝖯𝖬𝖤𝖭𝖳',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        '𝐓𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦 𝐲𝐨𝐮𝐫 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐩𝐫𝐞𝐬𝐞𝐧𝐜𝐞 𝐰𝐢𝐭𝐡 𝐨𝐮𝐫 𝐜𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐰𝐞𝐛 𝐝𝐞𝐯𝐞𝐥𝐨𝐩𝐦𝐞𝐧𝐭 𝐬𝐞𝐫𝐯𝐢𝐜𝐞𝐬. 𝐅𝐫𝐨𝐦 𝐬𝐭𝐮𝐧𝐧𝐢𝐧𝐠 𝐝𝐞𝐬𝐢𝐠𝐧𝐬 𝐭𝐨 𝐩𝐨𝐰𝐞𝐫𝐟𝐮𝐥 𝐟𝐮𝐧𝐜𝐭𝐢𝐨𝐧𝐚𝐥𝐢𝐭𝐲, 𝐰𝐞 𝐜𝐫𝐞𝐚𝐭𝐞 𝐰𝐞𝐛𝐬𝐢𝐭𝐞𝐬 𝐭𝐡𝐚𝐭 𝐝𝐫𝐢𝐯𝐞 𝐫𝐞𝐬𝐮𝐥𝐭𝐬.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    Text(
                      '𝖮𝗎𝗋 𝖶𝖾𝖻 𝖣𝖾𝗏𝗅𝗈𝗉𝗆𝖾𝗇𝗍 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    ServiceCard(
                      icon: Icons.language,
                      badgeText: 'Service',
                      title: 'Website Designing & Development Services',
                      description:
                          'Complete end-to-end website solutions from concept to deployment with modern design principles',
                      features: const [
                        'Custom Design',
                        'Responsive Layout',
                        'Modern UI/UX',
                        'Cross-browser Compatible',
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
                      title: 'Website Design Services',
                      description:
                          'Creative and user-focused website designs that convert visitors into customers.',
                      features: const [
                        'Visual Design',
                        'User Experience',
                        'Brand Integration',
                        'Mobile-first Design',
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
                      icon: Icons.web,
                      badgeText: 'Service',
                      title: 'Website Devlopment Services',
                      description:
                          'Robust backend devlopment and frontend implementation for scalable web sites',
                      features: const [
                        'Frontend Development',
                        'Backend Systems',
                        'Database Integration',
                        'API Development',
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
                      icon: Icons.shopping_cart_outlined,
                      badgeText: 'Service',
                      title: 'E-commerce Devlopment',
                      description:
                          'Full-featured online store with secure payment processing and inventory management',
                      features: const [
                        'Shopping Cart',
                        'Payment Gateway',
                        'Inventory Management',
                        'Order Processing',
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
                      title: 'Web Hosting & Domain Services',
                      description:
                          'Reliable web hosting solutions and domain management for optional website performance',
                      features: const [
                        'Shopping Cart',
                        'Payment Gateway',
                        'Inventory Management',
                        'Order Processing',
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
                      icon: Icons.search,
                      badgeText: 'Service',
                      title: 'SEO & Digital Marketing Integration',
                      description:
                          'Built-in SEO optimization and marketing tools to boost your online presence',
                      features: const [
                        'On-page SEO',
                        'Analytics Setup',
                        'Social Integration',
                        'Performance Tracking',
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
                      icon: Icons.shield_outlined,
                      badgeText: 'Service',
                      title: 'Performance & Security Optimization',
                      description:
                          'Advanced security measures and performance optimization for fast, secure websites',
                      features: const [
                        'Secured Audits',
                        'Speed Optimization',
                        'SSL Implementation',
                        'Backup Solutions',
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
                      icon: Icons.build_outlined,
                      badgeText: 'Service',
                      title: 'Website Maintenance & Support',
                      description:
                          'Ongoing maintenance and technical support to keep your website running smoothly',
                      features: const [
                        'Regular Updates',
                        'Bug Fixes',
                        'Content Updates',
                        'Technical Support',
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
                      title: 'Emerging Web Technologies',
                      description:
                          'Cutting-edge web technologies and framework for future-ready websites',
                      features: const [
                        'Progressive Web Apps',
                        'AI Integration',
                        'Modern FrameworkS',
                        'Cloud Solutions',
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
                      title: 'Benefits of WebsiteDesign & Devlopment Services',
                      description:
                          'Comprehensive advantages of professional website design and devlopment for your business',
                      features: const [
                        'Increased Online Presence',
                        'Better User Engagement',
                        'higher Conversion Rates',
                        'Profeshional Credibility',
                      ],
                      onEnquire: () {
                        showDialog(
                          context: context,
                          builder: (_) => const EnquiryDialog(),
                        );
                      },
                    ),
                    SizedBox(height: 62),
                    Text(
                      '𝖡𝖾𝗇𝖾𝖿𝗂𝗍𝗌 𝗈𝖿 𝖮𝗎𝗋 𝖶𝖾𝖻 𝖣𝖾𝗏𝖾𝗅𝗈𝗉𝗆𝖾𝗇𝗍 𝖲𝖾𝗋𝗏𝗂𝖼𝖾𝗌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Why choose our web development solutions for your business',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: const [
                          BenefitItemCard(
                            text:
                                'Professional web presence that builds trust and credibility',
                          ),
                          BenefitItemCard(
                            text:
                                'Responsive design that works perfectly on all devices',
                          ),
                          BenefitItemCard(
                            text:
                                'SEO-optimized structure for better search engine rankings',
                          ),
                          BenefitItemCard(
                            text: 'Fast loading times and optimal performance',
                          ),
                          BenefitItemCard(
                            text:
                                'Secure and reliable hosting with regular backups',
                          ),
                          BenefitItemCard(
                            text: 'Ongoing support and maintenance included',
                          ),
                          BenefitItemCard(
                            text:
                                'Scalable solutions that grow with your business',
                          ),
                          BenefitItemCard(
                            text:
                                'Integration with modern marketing tools and anlytics',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 62),
                    Text(
                      '𝖱𝖾𝖺𝖽𝗒 𝗍𝗈 𝖡𝗎𝗂𝗅𝖽 𝖸𝗈𝗎𝗋 𝖶𝖾𝖻𝗌𝗂𝗍𝖾?',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Let\'s create a powerful web presence that drives your business forward. Get in touch with our web development experts today.',
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
                      primaryText: 'Get Started Today',
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
                    const AppFooter(),
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
