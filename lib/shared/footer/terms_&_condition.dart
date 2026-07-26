import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({super.key});

  // Helper to launch URLs (mailto links)
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Terms & Policy",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    "By using this website, you agree to comply with our Terms & Conditions. All content, software, designs, and materials on this site are owned by us and may not be copied or reused without permission. You agree not to misuse the website, attempt unauthorized access, or engage in harmful activities.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Our services, pricing, and features may be updated or changed at any time. We are not responsible for damages arising from website use, downtime, data loss, or third-party links.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "We may modify these Terms at any time, and continued use means acceptance.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  InkWell(
                    onTap: () =>
                        _launchURL('mailto:business@al-mawa.international'),
                    child: const Text(
                      "For queries, contact:\nbusiness@al-mawa.international",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "We collect personal information such as name, contact details, emails, and usage data to provide and improve our IT services. We also use cookies to enhance website performance.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Your information is kept secure and shared only with trusted service partners or legal authorities when required. We do not sell or misuse your data. You may request access, correction, or deletion of your data at any time.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "By using this website, you consent to this Privacy Policy.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 16),

                  InkWell(
                    onTap: () =>
                        _launchURL('mailto:legal@al-mawa.international'),
                    child: const Text(
                      "For privacy concerns, contact:\nlegal@al-mawa.international",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),

            // Footer without horizontal padding
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
