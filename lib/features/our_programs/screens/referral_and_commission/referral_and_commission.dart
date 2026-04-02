import 'package:almawa_app/features/our_programs/screens/franchise/widget/franchise_feature_card.dart';
import 'package:almawa_app/features/our_programs/screens/referral_and_commission/widget/referral_form_dialog.dart';
import 'package:almawa_app/features/our_programs/widget/process_step_item.dart';
import 'package:almawa_app/features/our_programs/screens/referral_and_commission/widget/referral_feature_card.dart';
import 'package:almawa_app/features/our_programs/screens/referral_and_commission/widget/referral_stats_section.dart';
import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';

class ReferralAndCommission extends StatefulWidget {
  const ReferralAndCommission({super.key});

  @override
  State<ReferralAndCommission> createState() => _ReferralAndCommissionState();
}

class _ReferralAndCommissionState extends State<ReferralAndCommission> {
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Earn\n",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                        text: "Commission\n",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF1E88E5),
                        ),
                      ),
                      TextSpan(
                        text: "Through Referrals",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
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
                "Join our referral program and earn attractive commissions by referring clients to Al-Mawa's premium services",
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
                        builder: (context) => const ReferralFormDialog(),
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
                          "Start Referring",
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
                "Attractive Commission Structure",
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
                icon: Icons.attach_money,
                extraText: "10–15%", // 👈 NEW LINE
                title: "Web Services",
                subtitle:
                    "Earn 10-15% commission on web development and design projects",
              ),
            ),
            const SizedBox(height: 16),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const FranchiseFeatureCard(
                icon: Icons.trending_up_outlined,
                extraText: "8-12%", // 👈 NEW LINE
                title: "Digital Marketing",
                subtitle:
                    "Get 8-12% commission on digital marketing and SEO services",
              ),
            ),
            const SizedBox(height: 16),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const FranchiseFeatureCard(
                icon: Icons.groups_outlined,
                extraText: "10–15%", // 👈 NEW LINE
                title: "IT Services",
                subtitle:
                    "Receive 5-10% commission on IT infrastructure and support services",
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Attractive Commission Structure",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// STEPS
            const ReferralStepItem(
              number: "1",
              title: "Sign Up",
              description:
                  "Register for our referral program and get your unique referral code",
            ),

            const ReferralStepItem(
              number: "2",
              title: "Refer Clients",
              description:
                  "Share your referral code with potential clients in your network",
            ),

            const ReferralStepItem(
              number: "3",
              title: "Client Converts",
              description:
                  "When referred clients purchase our services, the deal is tracked",
            ),

            const ReferralStepItem(
              number: "4",
              title: "Earn Commission",
              description:
                  "Receive your commission payout once the project is completed",
            ),
             const SizedBox(height: 32),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Maximize Your Earning Potential",
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
                "Turn your professional network into a steady income stream with Al-Mawa's generous referral program. Our referrers earn substantial commissions on every successful referral.",
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
                "With transparent tracking, timely payouts, and dedicated support, you'll have everything you need to succeed as a trusted Al-Mawa partner.",
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
                      builder: (context) => const ReferralFormDialog(),
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
                        "Join Now",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildSecondImageCard(),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Why Join Our Referral Program?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height:20),
            Column(
              children: [
                ReferralFeatureCard(
                  icon: Icons.card_giftcard,
                  title: "No Investment",
                  subtitle: "Start earning without any financial investment",
                ),
            
                const SizedBox(height: 16),
            
                ReferralFeatureCard(
                  icon: Icons.track_changes,
                  title: "High Commission",
                  subtitle:
                      "Earn attractive commission on every successful referral",
                ),
            
                const SizedBox(height: 16),
            
                ReferralFeatureCard(
                  icon: Icons.workspace_premium,
                  title: "Performance Bonuses",
                  subtitle:
                      "Additional bonuses for high-performing referrers",
                ),
            
                const SizedBox(height: 16),
            
                ReferralFeatureCard(
                  icon: Icons.people_outline_outlined,
                  title: "Dedicated Support",
                  subtitle:
                      "Personal support to help you maximize referrals",
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Our Referral Success Stories",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ReferralStatsSection(),
                AppFooter()
              ],
            ),
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
        child: Image.asset("assets/images/referral.png", fit: BoxFit.cover),
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
        child: Image.asset("assets/images/referral2.png", fit: BoxFit.cover),
      ),
    ),
  );
}
