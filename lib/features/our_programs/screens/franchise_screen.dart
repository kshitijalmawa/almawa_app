import 'package:almawa_app/features/our_programs/screens/franchise/widget/franchise_feature_card.dart';
import 'package:almawa_app/features/our_programs/screens/franchise/widget/franchise_form_dialog.dart';
import 'package:almawa_app/features/our_programs/screens/franchise/widget/franchise_reqirment_section.dart';
import 'package:almawa_app/features/our_programs/screens/franchise/widget/service_card_franchise.dart';
import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';

class FranchiseScreen extends StatefulWidget {
  const FranchiseScreen({super.key});

  @override
  State<FranchiseScreen> createState() => _FranchiseScreenState();
}

class _FranchiseScreenState extends State<FranchiseScreen> {
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
            /// Title
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Join Our\n",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                        text: "Franchise\nNetwork",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF1E88E5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            /// Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Build a successful business partnership with Al-Mawa and become part of our growing family of entrepreneurs",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 24),

           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const FranchiseFormDialog(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E88E5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "Apply Now",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildImageCard(),
            ),
            const SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Why Choose Al-Mawa Franchise?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const FranchiseFeatureCard(
                icon: Icons.workspace_premium_outlined,
                title: "Established Brand",
                subtitle:
                    "Partner with a trusted brand with proven success in the market",
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const FranchiseFeatureCard(
                icon: Icons.groups_outlined,
                title: "Training & Support",
                subtitle:
                    "Comprehensive training and ongoing support to ensure your success",
              ),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const FranchiseFeatureCard(
                icon: Icons.trending_up_outlined,
                title: "Growth Potential",
                subtitle:
                    "Unlimited growth opportunities with multiple revenue streams",
              ),
            ),
            const SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Join a Growing Network",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 16),

            /// Description 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Become part of Al-Mawa's expanding franchise network across multiple regions. Our proven business model and comprehensive support system ensure your success in the competitive IT services market.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade700,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 16),

            /// Description 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "With over 50+ successful franchise partners, we offer a turnkey solution that includes training, marketing support, and access to our established client base.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade700,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// Start Journey Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const FranchiseFormDialog(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Start Your Journey",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            /// Second Image Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildSecondImageCard(),
            ),
            const SizedBox(height: 32),

            /// Services Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Services You'll Offer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// Service Card 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ServiceCardFranchise(
                icon: Icons.language,
                title: "Web Development",
                subtitle: "Complete web solutions for businesses",
              ),
            ),
            const SizedBox(height: 16),

            /// Service Card 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ServiceCardFranchise(
                icon: Icons.trending_up,
                title: "Digital Marketing",
                subtitle: "Comprehensive marketing services",
              ),
            ),
            const SizedBox(height: 16),

            /// Service Card 3
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ServiceCardFranchise(
                icon: Icons.settings,
                title: "IT Services",
                subtitle: "Complete IT infrastructure solutions",
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const ServiceCardFranchise(
                icon: Icons.headset_mic,
                title: "Support Services",
                subtitle: "24/7 technical support for clients",
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Franchise Requirements",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FranchiseRequirementsSection(),
            AppFooter(),
          ],
        ),
      ),
    );
  }
}

Widget _buildImageCard() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset("assets/images/franchise.png", fit: BoxFit.cover),
      ),
    ),
  );
}

Widget _buildSecondImageCard() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: Image.asset("assets/images/franchis2.png", fit: BoxFit.cover),
      ),
    ),
  );
}
