import 'package:almawa_app/features/our_programs/model/program_details.dart';
import 'package:almawa_app/features/our_programs/screens/program_details_screen.dart';
import 'package:almawa_app/features/our_programs/services/our_programs_service.dart';
import 'package:almawa_app/features/our_programs/widget/bene_fit_item.dart';
import 'package:almawa_app/features/our_programs/widget/bene_fits_header_card.dart';
import 'package:almawa_app/features/our_programs/widget/career_cta_section.dart';
import 'package:almawa_app/features/our_programs/widget/process_step_item.dart';
import 'package:almawa_app/features/our_programs/widget/scrolling_strip.dart';
import 'package:almawa_app/features/our_programs/widget/stats_section.dart';
import 'package:almawa_app/features/our_programs/widget/testimonial_card.dart';
import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:flutter/material.dart';

class OurPrograms extends StatefulWidget {
  const OurPrograms({super.key});

  @override
  State<OurPrograms> createState() => _OurProgramsState();
}

class _OurProgramsState extends State<OurPrograms> {
  late Future<List<ProgramModel>> _programsFuture;
  final GlobalKey _coursesKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _programsFuture = ProgramService.getAllPrograms();
  }
  void _scrollToCourses() {
    final context = _coursesKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircleAvatar(radius: 4, backgroundColor: Colors.blue),
                    SizedBox(width: 6),
                    Text(
                      "ENROLL & GET CERTIFIED",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 18),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "𝐈𝐓 𝐂𝐨𝐮𝐫𝐬𝐞𝐬 &",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "𝐈𝐧𝐭𝐞𝐫𝐧𝐬𝐡𝐢𝐩 ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: "𝐏𝐫𝐨𝐠𝐫𝐚𝐦",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 16),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Learn Web Development, Mobile Apps, Artificial Intelligence and Cloud Computing with real industry projects and expert mentorship.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Apply for Internship  →",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: _scrollToCourses,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Explore Coursess ↓",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
              indent: 16,
              endIndent: 16,
            ),
            const SizedBox(height: 30),
            const StatsSection(),

            const SizedBox(height: 40),
            const ScrollingStrip(),

            const SizedBox(height: 30),
            Text(
              'What we offers',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "𝐄𝐱𝐩𝐥𝐨𝐫𝐞 𝐎𝐮𝐫 𝐂𝐨𝐮𝐫𝐜𝐞𝐬",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Choose from our comprehensive range of courses and start your learning journey with real mentorship today.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              key: _coursesKey,
              child: FutureBuilder<List<ProgramModel>>(
                future: _programsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  if (snapshot.hasError) {
                    return const Center(child: Text("Something went wrong"));
                  }

                  final programs = snapshot.data ?? [];

                  if (programs.isEmpty) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text("No programs available"),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: programs.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemBuilder: (context, index) {
                      final program = programs[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// ICON BOX
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                _getIcon(program.iconKey),
                                color: Colors.blue,
                              ),
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    program.title,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    program.desc,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      height: 1.4,
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  GestureDetector(
                                    onTap: () async {
                                      final data =
                                          await ProgramService.getProgramBySlug(
                                            program.slug,
                                          );

                                      if (data != null) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => ProgramDetailsScreen(
                                              program: data,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      "Learn More →",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Why Choose Us',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "𝐎𝐮𝐫 𝐈𝐧𝐭𝐞𝐫𝐧𝐬𝐡𝐢𝐩 𝐏𝐫𝐨𝐠𝐫𝐚𝐦 𝐁𝐞𝐧𝐞𝐟𝐢𝐭𝐬",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Transform your theoretical knowledge into practical experience with our comprehensive program.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 20),
            const BenefitsHeaderCard(),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  BenefitItem(
                    icon: Icons.flash_on,
                    title: "Real Industry Projects",
                    description:
                        "Work on live projects used by actual clients and learn real-world development practices that matter.",
                  ),

                  BenefitItem(
                    icon: Icons.people_outline,
                    title: "Developer Mentorship",
                    description:
                        "Get guided by experienced professionals who help you overcome challenges and grow your skills.",
                  ),

                  BenefitItem(
                    icon: Icons.folder_open,
                    title: "Portfolio Development",
                    description:
                        "Build impressive projects that showcase your skills to future employers and stand out in interviews.",
                  ),

                  BenefitItem(
                    icon: Icons.verified_outlined,
                    title: "Internship Certificate",
                    description:
                        "Earn recognized certifications that validate your expertise and open doors to new opportunities.",
                  ),

                  BenefitItem(
                    icon: Icons.monitor_heart_outlined,
                    title: "Job Preparation Guidance",
                    description:
                        "Career coaching, interview preparation, and placement assistance from our expert team.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            const SizedBox(height: 30),
            Text(
              'How It Works',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "𝐅𝐨𝐥𝐥𝐨𝐰 𝐎𝐮𝐫 𝐏𝐫𝐨𝐯𝐞𝐧 𝐏𝐫𝐨𝐜𝐞𝐬𝐬",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Four simple steps to become a skilled, job-ready developer in the technology industry.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const HowItWorksSection(),
            const SizedBox(height: 30),
            Text(
              'Student Stories',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "𝐕𝐨𝐢𝐜𝐞𝐬 𝐅𝐫𝐨𝐦 𝐎𝐮𝐫 𝐒𝐭𝐮𝐝𝐞𝐧𝐭𝐬",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Hear from students who transformed their careers through our program. Hover to pause.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 30),
            const StudentStoriesSection(),
            const SizedBox(height: 40),
            CareerCTASection(onViewCourses: _scrollToCourses),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

IconData _getIcon(String key) {
  final value = key.toLowerCase();

  if (value.contains('web') || value.contains('code')) {
    return Icons.code;
  }

  if (value.contains('ui') ||
      value.contains('ux') ||
      value.contains('design')) {
    return Icons.light_mode_outlined;
  }

  if (value.contains('ai') || value.contains('artificial')) {
    return Icons.psychology;
  }

  return Icons.light_mode_outlined;
}
