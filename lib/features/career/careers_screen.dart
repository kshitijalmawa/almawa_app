import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:almawa_app/shared/widget/benefit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:almawa_app/features/career/widget/faq_tile.dart';
import 'package:almawa_app/features/career/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CareersScreen extends StatefulWidget {
  const CareersScreen({super.key});

  @override
  State<CareersScreen> createState() => _CareersScreenState();
}

class _CareersScreenState extends State<CareersScreen> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  String selectedDepartment = "All Departments";

  List<Map<String, dynamic>> jobs = [
    {
      "title": "DATA ENTRY/BACK OFFICE EXECUTIVE",
      "department": "Operations",
      "description":
          "• Enter and update data accurately across systems and spreadsheets.\n"
          "• Verify information, correct errors, and maintain clean data records.\n"
          "• Prepare reports and organize documents.\n"
          "• Maintain confidentiality of all sensitive information.\n"
          "• Assist in basic administrative and clerical tasks.\n"
          "• Ensure timely completion of assigned data tasks.",
      "requirements": [
        "HIGH TYPING SPEED WITH ACCURACY",
        "PROFICIENCY IN MS EXCEL, WORD, BASIC COMPUTER OPERATIONS",
        "STRONG ATTENTION TO DETAIL AND GOOD ORGANIZATIONAL SKILLS",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "YOUTUBE-VLOGGER",
      "department": "Marketing",
      "description":
          "• Plan and create engaging video content for YouTube and social platforms.\n"
          "• Script, shoot, edit, and upload videos on a regular basis.\n"
          "• Showcase services, properties, customer stories, and in-house activities.\n"
          "• Create thumbnails and optimize videos for better reach and engagement.\n"
          "• Stay updated with trends, reels, and viral formats.\n"
          "• Conduct interviews, podcasts, and on-camera presentations.\n"
          "• Maintain consistent posting schedules and a strong brand voice.",
      "requirements": [
        "CONFIDENCE ON CAMERA AND GOOD COMMUNICATION SKILLS",
        "PROFICIENCY IN VIDEO EDITING TOOLS",
        "CREATIVITY IN STORYTELLING AND STRONG SOCIAL MEDIA UNDERSTANDING",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "DIGITAL MARKETING EXECUTIVE (EXPERIENCED)",
      "department": "Marketing",
      "description":
          "• Plan, execute, and optimize digital marketing campaigns across social media, Google Ads, and other online platforms.\n"
          "• Manage social media accounts, create content strategies, and analyze performance metrics to improve engagement and reach.\n"
          "• Handle SEO, SEM, and website optimization to increase organic traffic and search rankings.\n"
          "• Monitor campaign performance, prepare reports, and provide actionable insights to improve ROI.\n"
          "• Stay updated with the latest digital marketing trends, tools, and platform algorithm changes.",
      "requirements": [
        "BACHELOR'S DEGREE IN MARKETING, COMMUNICATIONS, OR RELATED FIELD",
        "2–3 YEARS OF HANDS-ON EXPERIENCE IN DIGITAL MARKETING",
        "STRONG KNOWLEDGE OF SEO, SEM, GOOGLE ADS, META ADS, AND SOCIAL MEDIA MARKETING",
        "PROFICIENCY IN TOOLS SUCH AS GOOGLE ANALYTICS, SEARCH CONSOLE, META BUSINESS SUITE, CANVA, OR ADOBE CREATIVE SUITE",
        "STRONG ANALYTICAL AND STRATEGIC THINKING SKILLS",
        "EXCELLENT COMMUNICATION AND PROJECT MANAGEMENT ABILITIES",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "VIDEO EDITOR",
      "department": "Design",
      "description":
          "• Edit and produce high-quality videos for promotions, social media reels, advertisements, and brand storytelling.\n"
          "• Create engaging visual narratives using footage, graphics, sound, transitions, and effects.\n"
          "• Develop motion graphics, animations, and video layouts aligned with brand guidelines.\n"
          "• Collaborate with marketing and content teams to understand video concepts, objectives, and deadlines.\n"
          "• Ensure consistency in branding elements such as colors, fonts, tone, and visual style across all video content.\n"
          "• Optimize videos for multiple platforms and formats (Instagram, YouTube, websites, paid ads, etc.).\n"
          "• Manage raw footage, cuts, revisions, and final exports efficiently.\n"
          "• Stay updated with the latest video editing tools, techniques, and industry trends to enhance creative quality.",
      "requirements": [
        "VIDEO EDITING",
        "DIPLOMA OR DEGREE IN GRAPHIC DESIGN, MULTIMEDIA, VISUAL COMMUNICATION, OR RELATED FIELD",
        "CANDIDATES WITH STRONG PORTFOLIOS MAY BE CONSIDERED REGARDLESS OF DEGREE",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "SOFTWARE DEVELOPER (EXPERIENCED)",
      "department": "Engineering",
      "description":
          "• Develop and maintain software applications.\n"
          "• Analyse requirements and implement solutions.\n"
          "• Optimize application performance.\n"
          "• Collaborate with cross-functional teams.\n"
          "• Maintain documentation and code quality.",
      "requirements": [
        "2+ YEARS DEVELOPMENT EXPERIENCE",
        "STRONG PROGRAMMING SKILLS",
        "EXPERIENCE WITH DATABASES AND APIS",
        "DEBUGGING AND OPTIMIZATION SKILLS",
        "TEAM COLLABORATION ABILITY",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "EXPERIENCED MOBILE APP DEVELOPER (ANDROID & IOS)",
      "department": "Engineering",
      "description":
          "• Design and develop mobile applications.\n"
          "• Integrate APIs and third-party services.\n"
          "• Optimize app performance.\n"
          "• Ensure cross-platform compatibility.\n"
          "• Handle app deployment and updates.",
      "requirements": [
        "2+ YEARS MOBILE DEVELOPMENT EXPERIENCE",
        "EXPERTISE IN FLUTTER OR NATIVE PLATFORMS",
        "API AND DATABASE INTEGRATION SKILLS",
        "DEBUGGING AND TESTING EXPERTISE",
        "APP STORE / PLAY STORE EXPERIENCE",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "FRESHER DIGITAL MARKETING EXECUTIVE",
      "department": "Marketing",
      "description":
          "• Assist in digital marketing campaigns.\n"
          "• Manage basic social media posting.\n"
          "• Support SEO and ad campaigns.\n"
          "• Analyse basic performance metrics.\n"
          "• Learn digital marketing tools.",
      "requirements": [
        "BASIC DIGITAL MARKETING KNOWLEDGE",
        "INTEREST IN SOCIAL MEDIA AND ADS",
        "CREATIVITY AND COMMUNICATION SKILLS",
        "WILLINGNESS TO LEARN",
        "CERTIFICATION IS A PLUS",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "BUSINESS ANALYST (EXPERIENCED)",
      "department": "Marketing",
      "description":
          "• Manage and coordinate 100 business clients and vendors.\n"
          "• Analyse business requirements and workflows.\n"
          "• Prepare reports and insights.\n"
          "• Act as a bridge between clients and technical teams.\n"
          "• Ensure client satisfaction and retention.",
      "requirements": [
        "3+ YEARS BUSINESS ANALYSIS EXPERIENCE",
        "STRONG CLIENT HANDLING SKILLS",
        "EXCELLENT COMMUNICATION SKILLS",
        "DATA ANALYSIS AND REPORTING ABILITY",
        "MULTI-TASKING AND LEADERSHIP SKILLS",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
    {
      "title": "BDE – BUSINESS DEVELOPMENT EXECUTIVE (EXPERIENCED)",
      "department": "Operations",
      "description":
          "• Meet clients for sales and service discussions.\n"
          "• Close deals for IT & social media services.\n"
          "• Generate and follow up leads.\n"
          "• Prepare proposals and presentations.\n"
          "• Maintain client relationships.",
      "requirements": [
        "1–3 YEARS BDE EXPERIENCE",
        "STRONG SALES AND NEGOTIATION SKILLS",
        "KNOWLEDGE OF IT & DIGITAL SERVICES",
        "FIELD SALES EXPERIENCE PREFERRED",
        "TARGET-ORIENTED MINDSET",
      ],
      "location": "Pune, India",
      "type": "Full-time",
      "salary": "Competitive",
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredJobs = jobs.where((job) {
      final matchesSearch = job["title"].toLowerCase().contains(searchQuery);

      final matchesDepartment =
          selectedDepartment == "All Departments" ||
          job["department"] == selectedDepartment;

      return matchesSearch && matchesDepartment;
    }).toList();

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: Column(
                children: [
                  const Text(
                    "Open Positions",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Discover opportunities that match your\nskills and passion",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value.toLowerCase();
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Search jobs...",
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      value: selectedDepartment,
                      buttonStyleData: ButtonStyleData(
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "All Departments",
                          child: Text("All Departments"),
                        ),
                        DropdownMenuItem(
                          value: "Operations",
                          child: Text("Operations"),
                        ),
                        DropdownMenuItem(
                          value: "Marketing",
                          child: Text("Marketing"),
                        ),
                        DropdownMenuItem(
                          value: "Design",
                          child: Text("Design"),
                        ),
                        DropdownMenuItem(
                          value: "Engineering",
                          child: Text("Engineering"),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedDepartment = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Location
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue.shade400,
                          size: 20,
                        ),
                        const SizedBox(width: 6),
                        const Text(
                          "Pune, India",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Column(
              children: filteredJobs.map((job) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: JobCard(
                    title: job["title"],
                    description: job["description"],
                    requirements: job["requirements"],
                    department: job["department"],
                    location: job["location"],
                    type: job["type"],
                    salary: job["salary"],
                  ),
                );
              }).toList(),
            ),

            if (filteredJobs.isEmpty)
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "No jobs found",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),

            const SizedBox(height: 50),
            const SizedBox(height: 28),

            // Why Work With Us
            const Center(
              child: Text(
                '𝖶𝖧𝖸 𝖶𝖮𝖱𝖪 𝖶𝖨𝖳𝖧 𝖴𝖲 ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '𝐖𝐞 𝐛𝐞𝐥𝐢𝐞𝐯𝐞 𝐢𝐧 𝐭𝐚𝐤𝐢𝐧𝐠 𝐜𝐚𝐫𝐞 𝐨𝐟 𝐨𝐮𝐫 𝐭𝐞𝐚𝐦 𝐰𝐢𝐭𝐡 𝐜𝐨𝐦𝐩𝐫𝐞𝐡𝐞𝐧𝐬𝐢𝐯𝐞 𝐛𝐞𝐧𝐞𝐟𝐢𝐭𝐬 𝐚𝐧𝐝 𝐩𝐞𝐫𝐤𝐬',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            BenefitCard(
              icon: Icons.favorite_border,
              title: "INNOVATIVE WORK\nENVIRONMENT",
              description:
                  "Collaborate with a forward-thinking team that embraces creativity, technology, and continuous learning.",
            ),
            const SizedBox(height: 14),
            BenefitCard(
              icon: Icons.currency_rupee,
              title: "CAREER GROWTH &\nDEVELOPMENT",
              description:
                  "Access opportunities for skill enhancement, mentorship, and advancement in a fast-evolving digital landscape",
            ),
            const SizedBox(height: 14),
            BenefitCard(
              icon: Icons.workspace_premium_outlined,
              title: "EMPOWERMENT &\nIMPACT",
              description:
                  "Contribute to meaningful projects that drive real business results and make a tangible difference",
            ),
            const SizedBox(height: 28),

            // FAQ Section
            const Center(
              child: Text(
                '𝖥𝖱𝖤𝖰𝖴𝖤𝖭𝖳𝖫𝖸 𝖠𝖲𝖪𝖤𝖣 𝖰𝖴𝖤𝖲𝖳𝖨𝖮𝖭',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '𝐆𝐨𝐭 𝐪𝐮𝐞𝐬𝐭𝐢𝐨𝐧𝐬? 𝐖𝐞\'𝐯𝐞 𝐠𝐨𝐭 𝐚𝐧𝐬𝐰𝐞𝐫𝐬.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 25),

            FAQTile(
              question: "What is the interview process like?",
              answer:
                  "Our interview process typically consists of an initial phone screening, technical assessment (for technical roles), and 2-3 rounds of interviews with team members and leadership. The entire process usually takes 2 to 4 days.",
            ),
            FAQTile(
              question: "Do you offer remote work opportunities?",
              answer:
                  "Yes! We offer fully remote positions as well as hybrid arrangements. Many of our team members work remotely, and we have the tools and culture to support distributed teams effectively.",
            ),
            FAQTile(
              question: "What benefits do you provide?",
              answer:
                  "We believe in helping our team grow through continuous learning. We offer opportunities to explore new skills, gain hands-on experience, and enhance your expertise all while providing a competitive salary, dedicated training hours for learning new skills, and refreshing tea breaks to keep you energized throughout the day.",
            ),
            FAQTile(
              question: "How do you support career growth?",
              answer:
                  "We believe in investing in our people. We provide mentorship programs, conference attendance, internal mobility opportunities, and regular career development conversations.",
            ),
            FAQTile(
              question: "What is the company culture like?",
              answer:
                  "Our culture is built on collaboration, innovation, and respect. We value diverse perspectives, encourage open communication, and maintain a healthy work-life balance while building amazing products.",
            ),

            const SizedBox(height: 80),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
