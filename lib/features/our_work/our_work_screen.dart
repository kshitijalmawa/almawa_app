import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:almawa_app/features/our_work/widget/card_widget.dart';
import 'package:flutter/material.dart';

class OurWorkScreen extends StatelessWidget {
  const OurWorkScreen({super.key});

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
                  'assets/images/app_logo.svg',
                  height: 48,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Our ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: "Work",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Explore our portfolio of digital solutions and marketing "
                "campaigns that drive real results for our clients.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  _TagChip(text: "SOCIAL MEDIA  •  ADS  •  WEB"),
                  _TagChip(text: "STRATEGY  •  DESIGN  •  DEVELOPMENT"),
                ],
              ),
            ),

            const SizedBox(height: 32),
            const Divider(height: 1),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Our Social Media Work",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Engaging social media content designed to represent "
                "your brand with clarity and impact.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Nitin Hardware",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/nitin.png",
                    websiteUrl:
                        'https://www.instagram.com/nitinhardwarepune?igsh=bGgwdmJycDVrcG9x',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Life Style Home Decor",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/lifestyle.png",
                    websiteUrl:
                        'https://www.instagram.com/lifestylehomedecorpune?igsh=cGJ3NThkbGZwYWRw',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "The Chocolate Room",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/chocolate.png",
                    websiteUrl:
                        'https://www.instagram.com/thechocolateroom_fcroad?igsh=MW8yeXcya3ZnbDJwNA==',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Hotel Rest INN",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/hotel.png",
                    websiteUrl:
                        'https://www.instagram.com/hotel_rest_inn?igsh=MXJtNjFuamh2NzBycg==',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Divyansh Fashion Zone",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/divyansh.png",
                    websiteUrl:
                        'https://www.instagram.com/divyyansh_fashion_?igsh=MXc5eW1oZmJoYjVhMQ==',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Our Website Devlopment',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Custom website solutions built to deliver results and create lasting impressions.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Life Style Home Decor",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/lifestyle.png",
                    websiteUrl: 'https://www.lifestylehomedecor.in/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Soni 'i' Residential World School",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/sonai.png",
                    websiteUrl: 'https://www.lifestylehomedecor.in/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Ticket Management CRM",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/ticket.png",
                    websiteUrl:
                        'https://ticket-management-crm.vercel.app/login',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Suraj Dry Fruits",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/suraj_dryfruit_1.png",
                    websiteUrl: 'https://www.surajnaturodryfruits.online/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Karyon",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/karyon.png",
                    websiteUrl: 'https://www.karyoncollege.com/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "SP Art Hub",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/sp_art.png",
                    websiteUrl:
                        'https://sp-art-hub-main-updated-website.vercel.app/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Erudition Infinite",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/erudition_infinite.png",
                    websiteUrl: 'https://www.eruditioninfinite.com/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Morpankh Saree",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/morpankh.png",
                    websiteUrl: 'https://www.morpankhsaree.com/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "KHM Infra",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/khm.png",
                    websiteUrl: 'https://khm-five.vercel.app/',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Our Software Development",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Cutting-edge software solutions and intelligent CRM systems that empower your team, "
                "automate operations, and unlock new growth opportunities for your business.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Nitin Hardware",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/nitin.png",
                    websiteUrl: 'https://www.nitinhardware.in/',
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Infinity Loan Services",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/infinity.png",
                    websiteUrl: 'https://www.infinityloanservices.com/',
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Fortune Loan Services",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/fortune.png",
                    websiteUrl: 'https://fortuneloan.services/',
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Sona'i School Fee Receipt Management",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/sonai.png",
                    websiteUrl:
                        'https://sonai-software-zeta.vercel.app/admin-login?from=/',
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Sp-Arts Erp System",
                    tag: "WEBSITE DEVELOPMENT",
                    isLive: true,
                    logoPath: "assets/images/sp_software.png",
                    websiteUrl: 'https://sp-art-erp.vercel.app/student/login',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  final String text;

  const _TagChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          letterSpacing: 1,
          color: Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
