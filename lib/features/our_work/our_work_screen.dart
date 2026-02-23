import 'package:almawa_app/shared/footer/app_footer.dart';
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
                child: Image.asset('assets/images/logoblack.png', height: 48),
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
                    websiteUrl: 'https://www.instagram.com/nitinhardwarepune?igsh=bGgwdmJycDVrcG9x',
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
                    websiteUrl: 'https://www.instagram.com/lifestylehomedecorpune?igsh=cGJ3NThkbGZwYWRw',
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
                    websiteUrl: 'https://www.instagram.com/thechocolateroom_fcroad?igsh=MW8yeXcya3ZnbDJwNA==',
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
                    websiteUrl: 'https://www.instagram.com/hotel_rest_inn?igsh=MXJtNjFuamh2NzBycg==',
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
                    websiteUrl: 'https://www.instagram.com/divyyansh_fashion_?igsh=MXc5eW1oZmJoYjVhMQ==',
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
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  SocialWorkCard(
                    title: "Nitin Hardware",
                    tag: "SOCIAL MEDIA MARKETING",
                    isLive: true,
                    logoPath: "assets/images/nitin.png",
                    websiteUrl: 'https://www.nitinhardware.in/',
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
                    websiteUrl: 'https://www.lifestylehomedecor.in/',
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
