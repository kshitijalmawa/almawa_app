import 'package:almawa_app/footer/app_footer.dart';
import 'package:almawa_app/widget/reach_us_card.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {

  String? selectedCountry;

  Future<void> _openMap() async {
    final Uri uri = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=Al-Mawa+International",
    );

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not open map";
    }
  }

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
            SizedBox(height:20),
            const Center(
              child: Text(
                "CONTACT US",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  fontFamily: "TimesNewRoman",
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Click on the Map for Direction",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 40),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(36),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Al-MAWA INTERNATIONAL - Pune, India',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 25),

            GestureDetector(
              onTap: _openMap,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "assets/images/mapdark.png",
                    height: 320,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '𝖲𝖤𝖭𝖣 𝖴𝖲 𝖠 \n𝖬𝖤𝖲𝖲𝖠𝖦𝖤',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Fill out the form below and we will get back to you within 24 hours.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("First Name"),
                    ),
                    const SizedBox(height: 18),

                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("Last Name"),
                    ),
                    const SizedBox(height: 18),

                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("Email Address"),
                    ),
                    const SizedBox(height: 18),

                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("Phone Number"),
                    ),
                    const SizedBox(height: 18),

                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("Mobile Number"),
                    ),
                    const SizedBox(height: 18),
                    GestureDetector(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode: false,
                          onSelect: (Country country) {
                            setState(() {
                              selectedCountry = country.name;
                            });
                          },
                        );
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedCountry ?? "Select Country",
                              style: TextStyle(
                                fontSize: 16,
                                color: selectedCountry == null
                                    ? Colors.grey.shade500
                                    : Colors.black,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    TextField(
                      controller: TextEditingController(),
                      decoration: _inputDecoration("Subject"),
                    ),
                    const SizedBox(height: 18),
                    TextField(
                      controller: TextEditingController(),
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText:
                            "Tell us about your project\nand how we can help bring\nyour vision to life...",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        contentPadding: const EdgeInsets.all(18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Submit",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),
            Center(
              child: Text(
                '𝖮𝗍𝗁𝖾𝗋 𝖶𝖺𝗒𝗌 𝗍𝗈 \n𝖱𝖾𝖺𝖼𝗁 𝖴𝗌',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '𝐂𝐡𝐨𝐨𝐬𝐞 𝐭𝐡𝐞 𝐦𝐞𝐭𝐡𝐨𝐝 𝐭𝐡𝐚𝐭 𝐰𝐨𝐫𝐤𝐬 𝐛𝐞𝐬𝐭 𝐟𝐨𝐫 𝐲𝐨𝐮. 𝐖𝐞\'𝐫𝐞 𝐚𝐥𝐰𝐚𝐲𝐬 𝐡𝐞𝐫𝐞 𝐭𝐨 𝐡𝐞𝐥𝐩!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 14),
            ReachUsCard(
              icon: Icons.email_outlined,
              title: "Email Us",
              lines: const [
                "business@al-mawa.international",
                "hr@al-mawa.international",
                "legal@al-mawa.international",
                "sales@al-mawa.international",
              ],
              footerText: "Send us an email anytime",
            ),
            SizedBox(height: 14),
            ReachUsCard(
              icon: Icons.phone_outlined,
              title: "Phone",
              lines: const [
                "+91 95611-79693",
                "+91 95119-91736",
                "+91 9028322363",
                "+91 95611-06693",
              ],
              footerText: "Mon - Sat: 10:00 AM - 06:00 PM",
            ),
            SizedBox(height: 14),
            ReachUsCard(
              icon: Icons.location_on_outlined,
              title: "Our Registered &\nCorporate address",
              lines: const [
                "AL-MAWA INTERNATIONAL Office",
                "No. 102-103 (Nexus Work Spaces)",
                "1st Floor, Pride Icon Building",
                "Above Athithi Restaurant, Kharadi",
                "Pune, India",
              ],
              footerText:
                  "1st Floor, Pride icon Building, Above Athithi Restaurant, Kharadi, Pune , Maharashtra- India 411014",
            ),
            SizedBox(height: 14),
            ReachUsCard(
              icon: Icons.location_on_outlined,
              title: "Working Hours",
              lines: const ["10:00 AM - 06:00 PM"],
              footerText: "",
            ),

            SizedBox(height: 80),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

InputDecoration _inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: Colors.grey.shade500),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
  );
}
