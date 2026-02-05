import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
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
          children: [
            const Text(
              "𝖠𝖡𝖮𝖴𝖳 \n𝖴𝖲",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "𝐓𝐡𝐫𝐨𝐮𝐠𝐡 𝐨𝐮𝐫 𝐰𝐨𝐫𝐤, 𝐰𝐞 𝐬𝐭𝐫𝐢𝐯𝐞 𝐭𝐨 𝐧𝐨𝐭 𝐨𝐧𝐥𝐲 𝐬𝐮𝐩𝐩𝐨𝐫𝐭 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬𝐞𝐬 𝐛𝐮𝐭 𝐭𝐨 𝐞𝐦𝐩𝐨𝐰𝐞𝐫 𝐭𝐡𝐞𝐦 𝐭𝐨 𝐥𝐞𝐚𝐝, 𝐚𝐝𝐚𝐩𝐭, 𝐚𝐧𝐝 𝐭𝐡𝐫𝐢𝐯𝐞 𝐢𝐧 𝐚 𝐜𝐨𝐦𝐩𝐞𝐭𝐢𝐭𝐢𝐯𝐞 𝐰𝐨𝐫𝐥𝐝. 𝐀𝐭 𝐀𝐋-𝐌𝐚𝐰𝐚 𝐈𝐧𝐭𝐞𝐫𝐧𝐚𝐭𝐢𝐨𝐧𝐚𝐥, 𝐰𝐞 𝐝𝐨𝐧'𝐭 𝐣𝐮𝐬𝐭 𝐩𝐫𝐨𝐯𝐢𝐝𝐞 𝐬𝐞𝐫𝐯𝐢𝐜𝐞𝐬 𝐰𝐞 𝐝𝐞𝐥𝐢𝐯𝐞𝐫 𝐭𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦𝐚𝐭𝐢𝐨𝐧 𝐚𝐧𝐝 𝐰𝐞 𝐩𝐫𝐨𝐦𝐢𝐬𝐞 𝐞𝐯𝐨𝐥𝐮𝐭𝐢𝐨𝐧.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/team_discuss.png",
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/grp.png",
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '𝖮𝖴𝖱 𝖳𝖤𝖠𝖬',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '𝐃𝐫𝐢𝐯𝐞𝐧 𝐛𝐲 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐨𝐧 𝐚𝐧𝐝 𝐭𝐞𝐚𝐦𝐰𝐨𝐫𝐤, 𝐨𝐮𝐫 𝐞𝐱𝐩𝐞𝐫𝐭𝐬 𝐟𝐫𝐨𝐦 𝐈𝐓, 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐦𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠, 𝐚𝐧𝐝 𝐠𝐫𝐚𝐩𝐡𝐢𝐜𝐬 𝐝𝐞𝐩𝐚𝐫𝐭𝐦𝐞𝐧𝐭𝐬 𝐰𝐨𝐫𝐤 𝐡𝐚𝐧𝐝 𝐢𝐧 𝐡𝐚𝐧𝐝 𝐭𝐨 𝐜𝐫𝐞𝐚𝐭𝐞 𝐢𝐦𝐩𝐚𝐜𝐭𝐟𝐮𝐥 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐞𝐱𝐩𝐞𝐫𝐢𝐞𝐧𝐜𝐞𝐬. 𝐖𝐞 𝐟𝐨𝐜𝐮𝐬 𝐨𝐧 𝐝𝐞𝐥𝐢𝐯𝐞𝐫𝐢𝐧𝐠 𝐪𝐮𝐚𝐥𝐢𝐭𝐲, 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐢𝐭𝐲, 𝐚𝐧𝐝 𝐩𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 𝐢𝐧 𝐞𝐯𝐞𝐫𝐲 𝐩𝐫𝐨𝐣𝐞𝐜𝐭 𝐰𝐞 𝐡𝐚𝐧𝐝𝐥𝐞.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/the_way_we_work.jpg",
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "𝖳𝖧𝖤 𝖶𝖠𝖸 𝖶𝖤 \n𝖶𝖮𝖱𝖪",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '𝐀𝐭 𝐀𝐋-𝐌𝐚𝐰𝐚 𝐈𝐧𝐭𝐞𝐫𝐧𝐚𝐭𝐢𝐨𝐧𝐚𝐥 𝐰𝐞 𝐜𝐨𝐦𝐛𝐢𝐧𝐞 𝐚 𝐫𝐞𝐬𝐞𝐚𝐫𝐜𝐡-𝐥𝐞𝐝 𝐝𝐢𝐬𝐜𝐨𝐯𝐞𝐫𝐲 𝐩𝐡𝐚𝐬𝐞 𝐰𝐢𝐭𝐡 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐞 𝐩𝐫𝐨𝐛𝐥𝐞𝐦-𝐬𝐨𝐥𝐯𝐢𝐧𝐠 𝐭𝐨 𝐝𝐞𝐥𝐢𝐯𝐞𝐫 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐩𝐫𝐨𝐝𝐮𝐜𝐭𝐬 𝐭𝐡𝐚𝐭 𝐦𝐨𝐯𝐞 𝐲𝐨𝐮𝐫 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬 𝐟𝐨𝐫𝐰𝐚𝐫𝐝. 𝐅𝐫𝐨𝐦 𝐜𝐨𝐥𝐥𝐚𝐛𝐨𝐫𝐚𝐭𝐢𝐯𝐞 𝐰𝐨𝐫𝐤𝐬𝐡𝐨𝐩𝐬 𝐚𝐧𝐝 𝐫𝐚𝐩𝐢𝐝 𝐩𝐫𝐨𝐭𝐨𝐭𝐲𝐩𝐢𝐧𝐠 𝐭𝐨 𝐚𝐠𝐢𝐥𝐞 𝐬𝐩𝐫𝐢𝐧𝐭𝐬 𝐚𝐧𝐝 𝐫𝐢𝐠𝐨𝐫𝐨𝐮𝐬 𝐐𝐀, 𝐰𝐞 𝐟𝐨𝐜𝐮𝐬 𝐨𝐧 𝐦𝐞𝐚𝐬𝐮𝐫𝐚𝐛𝐥𝐞 𝐨𝐮𝐭𝐜𝐨𝐦𝐞𝐬 𝐚𝐧𝐝 𝐮𝐬𝐞𝐫 𝐢𝐦𝐩𝐚𝐜𝐭 𝐚𝐭 𝐞𝐯𝐞𝐫𝐲 𝐬𝐭𝐞𝐩. 𝐏𝐨𝐬𝐭-𝐥𝐚𝐮𝐧𝐜𝐡 𝐰𝐞 𝐩𝐫𝐨𝐯𝐢𝐝𝐞 𝐚𝐧𝐚𝐥𝐲𝐭𝐢𝐜𝐬-𝐝𝐫𝐢𝐯𝐞𝐧 𝐢𝐦𝐩𝐫𝐨𝐯𝐞𝐦𝐞𝐧𝐭𝐬 𝐚𝐧𝐝 𝐨𝐧𝐠𝐨𝐢𝐧𝐠 𝐬𝐮𝐩𝐩𝐨𝐫𝐭 𝐬𝐨 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐞𝐯𝐨𝐥𝐯𝐞 𝐰𝐢𝐭𝐡 𝐲𝐨𝐮𝐫 𝐠𝐨𝐚𝐥𝐬 𝐚𝐧𝐝 𝐤𝐞𝐞𝐩 𝐝𝐞𝐥𝐢𝐯𝐞𝐫𝐢𝐧𝐠 𝐯𝐚𝐥𝐮𝐞.',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/why_choose_us.jpg",
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 60),
              child: Text(
                "𝖶𝖧𝖸 𝖢𝖧𝖮𝖮𝖲𝖤 𝖴𝖲",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '𝐂𝐡𝐨𝐨𝐬𝐞 𝐀𝐋-𝐌𝐚𝐰𝐚 𝐟𝐨𝐫 𝐚 𝐩𝐚𝐫𝐭𝐧𝐞𝐫 𝐭𝐡𝐚𝐭 𝐛𝐥𝐞𝐧𝐝𝐬 𝐝𝐞𝐞𝐩 𝐭𝐞𝐜𝐡𝐧𝐢𝐜𝐚𝐥 𝐞𝐱𝐩𝐞𝐫𝐭𝐢𝐬𝐞 𝐰𝐢𝐭𝐡 𝐛𝐮𝐬𝐢𝐧𝐞𝐬𝐬-𝐟𝐢𝐫𝐬𝐭 𝐭𝐡𝐢𝐧𝐤𝐢𝐧𝐠. 𝐎𝐮𝐫 𝐦𝐮𝐥𝐭𝐢𝐝𝐢𝐬𝐜𝐢𝐩𝐥𝐢𝐧𝐚𝐫𝐲 𝐭𝐞𝐚𝐦𝐬-𝐬𝐭𝐫𝐚𝐭𝐞𝐠𝐲, 𝐝𝐞𝐬𝐢𝐠𝐧, 𝐞𝐧𝐠𝐢𝐧𝐞𝐞𝐫𝐢𝐧𝐠, 𝐚𝐧𝐝 𝐠𝐫𝐨𝐰𝐭𝐡-𝐝𝐞𝐥𝐢𝐯𝐞𝐫 𝐬𝐜𝐚𝐥𝐚𝐛𝐥𝐞 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐟𝐨𝐜𝐮𝐬𝐞𝐝 𝐨𝐧 𝐫𝐞𝐚𝐥 𝐮𝐬𝐞𝐫 𝐨𝐮𝐭𝐜𝐨𝐦𝐞𝐬 𝐚𝐧𝐝 𝐦𝐞𝐚𝐬𝐮𝐫𝐚𝐛𝐥𝐞 𝐑𝐎𝐈. 𝐖𝐞 𝐩𝐫𝐢𝐨𝐫𝐢𝐭𝐢𝐳𝐞 𝐭𝐫𝐚𝐧𝐬𝐩𝐚𝐫𝐞𝐧𝐜𝐲, 𝐩𝐫𝐞𝐝𝐢𝐜𝐭𝐚𝐛𝐥𝐞 𝐝𝐞𝐥𝐢𝐯𝐞𝐫𝐲, 𝐚𝐧𝐝 𝐥𝐨𝐧𝐠-𝐭𝐞𝐫𝐦 𝐩𝐚𝐫𝐭𝐧𝐞𝐫𝐬𝐡𝐢𝐩𝐬 𝐬𝐨 𝐩𝐫𝐨𝐣𝐞𝐜𝐭𝐬 𝐥𝐚𝐮𝐧𝐜𝐡 𝐜𝐨𝐧𝐟𝐢𝐝𝐞𝐧𝐭𝐥𝐲 𝐚𝐧𝐝 𝐜𝐨𝐧𝐭𝐢𝐧𝐮𝐞 𝐭𝐨 𝐜𝐫𝐞𝐚𝐭𝐞 𝐢𝐦𝐩𝐚𝐜𝐭.',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/stand_for.jpg",
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 60),
              child: Text(
                "𝖶𝖧𝖠𝖳 𝖶𝖤 𝖲𝖳𝖠𝖭𝖣 𝖥𝖮𝖱",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '𝐖𝐞 𝐬𝐭𝐚𝐧𝐝 𝐟𝐨𝐫 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐨𝐧, 𝐚𝐜𝐜𝐨𝐮𝐧𝐭𝐚𝐛𝐢𝐥𝐢𝐭𝐲, 𝐚𝐧𝐝 𝐩𝐞𝐨𝐩𝐥𝐞-𝐜𝐞𝐧𝐭𝐞𝐫𝐞𝐝 𝐭𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲. 𝐖𝐞 𝐛𝐮𝐢𝐥𝐝 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐭𝐡𝐚𝐭 𝐬𝐢𝐦𝐩𝐥𝐢𝐟𝐲 𝐜𝐨𝐦𝐩𝐥𝐞𝐱𝐢𝐭𝐲, 𝐫𝐞𝐬𝐩𝐞𝐜𝐭 𝐩𝐫𝐢𝐯𝐚𝐜𝐲 𝐚𝐧𝐝 𝐚𝐜𝐜𝐞𝐬𝐬𝐢𝐛𝐢𝐥𝐢𝐭𝐲, 𝐚𝐧𝐝 𝐝𝐫𝐢𝐯𝐞 𝐬𝐮𝐬𝐭𝐚𝐢𝐧𝐚𝐛𝐥𝐞 𝐠𝐫𝐨𝐰𝐭𝐡. 𝐆𝐮𝐢𝐝𝐞𝐝 𝐛𝐲 𝐢𝐧𝐭𝐞𝐠𝐫𝐢𝐭𝐲, 𝐜𝐨𝐥𝐥𝐚𝐛𝐨𝐫𝐚𝐭𝐢𝐨𝐧, 𝐚𝐧𝐝 𝐚 𝐜𝐨𝐦𝐦𝐢𝐭𝐦𝐞𝐧𝐭 𝐭𝐨 𝐜𝐨𝐧𝐭𝐢𝐧𝐮𝐨𝐮𝐬 𝐥𝐞𝐚𝐫𝐧𝐢𝐧𝐠, 𝐨𝐮𝐫 𝐰𝐨𝐫𝐤 𝐚𝐢𝐦𝐬 𝐭𝐨 𝐜𝐫𝐞𝐚𝐭𝐞 𝐦𝐞𝐚𝐧𝐢𝐧𝐠𝐟𝐮𝐥, 𝐥𝐚𝐬𝐭𝐢𝐧𝐠 𝐢𝐦𝐩𝐚𝐜𝐭 𝐟𝐨𝐫 𝐜𝐥𝐢𝐞𝐧𝐭𝐬 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐜𝐨𝐦𝐦𝐮𝐧𝐢𝐭𝐢𝐞𝐬 𝐭𝐡𝐞𝐲 𝐬𝐞𝐫𝐯𝐞.',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "THE DYNAMIC",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            Text(
              "MINDS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '𝐀𝐋-𝐌𝐚𝐰𝐚 𝐈𝐧𝐭𝐞𝐫𝐧𝐚𝐭𝐢𝐨𝐧𝐚𝐥 𝐨𝐩𝐞𝐫𝐚𝐭𝐞𝐬 𝐮𝐧𝐝𝐞𝐫 𝐚 𝐥𝐞𝐚𝐧, 𝐚𝐠𝐢𝐥𝐞, 𝐚𝐧𝐝 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐨𝐧-𝐝𝐫𝐢𝐯𝐞𝐧 𝐬𝐭𝐫𝐮𝐜𝐭𝐮𝐫𝐞 𝐩𝐨𝐰𝐞𝐫𝐞𝐝 𝐛𝐲 𝐬𝐩𝐞𝐜𝐢𝐚𝐥𝐢𝐬𝐭𝐬 𝐚𝐜𝐫𝐨𝐬𝐬 𝐈𝐓, 𝐃𝐢𝐠𝐢𝐭𝐚𝐥 𝐌𝐚𝐫𝐤𝐞𝐭𝐢𝐧𝐠, 𝐃𝐞𝐬𝐢𝐠𝐧, 𝐇𝐑, 𝐚𝐧𝐝 𝐒𝐚𝐥𝐞𝐬. 𝐄𝐚𝐜𝐡 𝐝𝐞𝐩𝐚𝐫𝐭𝐦𝐞𝐧𝐭 𝐰𝐨𝐫𝐤𝐬 𝐢𝐧 𝐡𝐚𝐫𝐦𝐨𝐧𝐲 𝐭𝐨 𝐞𝐧𝐬𝐮𝐫𝐞 𝐬𝐞𝐚𝐦𝐥𝐞𝐬𝐬 𝐞𝐱𝐞𝐜𝐮𝐭𝐢𝐨𝐧 𝐚𝐧𝐝 𝐢𝐦𝐩𝐚𝐜𝐭𝐟𝐮𝐥 𝐜𝐥𝐢𝐞𝐧𝐭 𝐨𝐮𝐭𝐜𝐨𝐦𝐞𝐬. 𝐀𝐭 𝐭𝐡𝐞 𝐡𝐞𝐚𝐫𝐭 𝐨𝐟 𝐀𝐋-𝐌𝐚𝐰𝐚 𝐢𝐬 𝐚 𝐝𝐢𝐯𝐞𝐫𝐬𝐞 𝐭𝐞𝐚𝐦 𝐨𝐟 𝐩𝐚𝐬𝐬𝐢𝐨𝐧𝐚𝐭𝐞 𝐩𝐫𝐨𝐟𝐞𝐬𝐬𝐢𝐨𝐧𝐚𝐥𝐬 𝐰𝐡𝐨 𝐜𝐨𝐦𝐛𝐢𝐧𝐞 𝐞𝐱𝐩𝐞𝐫𝐢𝐞𝐧𝐜𝐞 𝐰𝐢𝐭𝐡 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐢𝐭𝐲 — 𝐝𝐞𝐥𝐢𝐯𝐞𝐫𝐢𝐧𝐠 𝐞𝐱𝐜𝐞𝐥𝐥𝐞𝐧𝐜𝐞 𝐚𝐧𝐝 𝐭𝐫𝐚𝐧𝐬𝐟𝐨𝐫𝐦𝐢𝐧𝐠 𝐞𝐯𝐞𝐫𝐲 𝐩𝐫𝐨𝐣𝐞𝐜𝐭 𝐢𝐧𝐭𝐨 𝐚 𝐬𝐮𝐜𝐜𝐞𝐬𝐬 𝐬𝐭𝐨𝐫𝐲.',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "DEVELOPMENT \nTEAM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/arshad.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Arshad Shaikh",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_01",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/sufiyan.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Sufiyan Ali",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_02",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/ahemad.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Md Ahmad Raza",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_03",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 50),
            Text(
              "Sales & Marketing \nTEAM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/priyanka.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Priyanka Godbole",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_01",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/sabeel.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Sabeel",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_02",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/omkar.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Omkar Bachanatti",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_03",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 50),
            Text(
              "Hr & Management",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/priyanka.png",
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Priyanka Godbole",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "_01",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logowhite.png",
                    height: 100,
                    fit: BoxFit.contain,
                  ),

                  const Text(
                    "Delivering next-generation digital solutions that\ntransform ideas into measurable results.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 28),

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
                      launchURL("mailto:business@al-mawa.international");
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
                          style: TextStyle(color: Colors.white70, fontSize: 14),
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
                          style: TextStyle(color: Colors.white70, fontSize: 14),
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
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  Divider(color: Colors.white24),

                  const SizedBox(height: 20),

                  const Text(
                    "© 2026 AI Mawa International. All rights reserved.",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),

                  const SizedBox(height: 16),

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
    );
  }
}
