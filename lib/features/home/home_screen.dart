import 'package:almawa_app/features/home/widgets/changing_word.dart';
import 'package:almawa_app/features/our_services/cloud_solutions.dart';
import 'package:almawa_app/shared/footer/app_footer.dart';
import 'package:almawa_app/features/our_services/ai_services.dart';
import 'package:almawa_app/features/our_services/digital_marketing.dart';
import 'package:almawa_app/features/our_services/graphic_design.dart';
import 'package:almawa_app/features/our_services/it_and_tech_services.dart';
import 'package:almawa_app/features/our_services/web_devlopment_screen.dart';
import 'package:almawa_app/features/home/widgets/app_drawer.dart';
import 'package:almawa_app/features/home/widgets/desk_voice_card.dart';
import 'package:almawa_app/features/home/widgets/service_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget get header => Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/background.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "AL MAWA\nINTERNATIONAL",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            "At AL-MAWA International we see technology as a strategic bridge that empowers people and accelerates growth. We partner with businesses to design tailored digital strategies, delivering measurable outcomes through innovation, reliability, and a commitment to excellence.",
            style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
          ),

          const SizedBox(height: 24),

          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: AspectRatio(
              aspectRatio: 16 / 9, // Good for banner-style images
              child: Image.asset(
                "assets/images/team_discuss.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  // assets/images/team_discuss.png

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65), // 👈 AppBar height
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,

          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20), // left spacing
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/logoblack.png',
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20), // right spacing
              child: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black, size: 28),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: const AppDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    height: 1.2,
                  ),
                  children: const [
                    TextSpan(
                      text: "TRY. TRUST.\nTRANSFORM",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Column(
                children: const [
                  Text(
                    "Empowering Businesses,",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Transforming ",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ChangingWord(),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: const Text(
                  "“𝐂𝐮𝐫𝐚𝐭𝐢𝐧𝐠 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐞𝐱𝐩𝐞𝐫𝐢𝐞𝐧𝐜𝐞 𝐚𝐧𝐝 𝐜𝐨𝐧𝐯𝐞𝐲𝐢𝐧𝐠 𝐝𝐢𝐠𝐢𝐭𝐚𝐥 𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧𝐬 𝐟𝐨𝐫 𝐛𝐫𝐢𝐠𝐡𝐭𝐞𝐫 𝐟𝐮𝐭𝐮𝐫𝐞.”",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              header,
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/demo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "OUR MISSION",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "Guided by the belief that technology's greatest value is its human impact, we deliver smart, sustainable IT solutions that transform how businesses operate. Our mission is to blend creativity with engineering to build solutions that scale, perform, and create lasting business value.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 24),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: AspectRatio(
                          aspectRatio: 16 / 9, 
                          child: Image.asset(
                            "assets/images/our_mission.jpg",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "OUR VALUES",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "We value honesty, collaboration, and continuous improvement. Our work focuses on building sustainable, intelligent solutions that drive growth, empower teams, and create meaningful outcomes for our clients.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 24),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: AspectRatio(
                          aspectRatio: 16 / 9, // good for banner-style images
                          child: Image.asset(
                            "assets/images/our_values2.jpg",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // assets/images/our_values2.jpg
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "WHAT WE CREATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "“Tansforming businesses through technology, insight, and integrated solutions“ ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              ServiceCardWidget(
                icon: Icons.code,
                iconColor: const Color(0xFF2D9CFF),
                title: "Web Development",
                description:
                    "Creating modern, responsive websites and web applications that drive business growth and engagement.",
                points: const [
                  "Website Design",
                  "E-commerce Development",
                  "Web Hosting",
                  "SEO Integration",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebDevlopmentScreen(),
                    ),
                  );
                },
              ),
              ServiceCardWidget(
                icon: Icons.settings,
                iconColor: Colors.blueGrey,
                title: "IT & Tech Services",
                description:
                    "Comprehensive IT solutions including infrastructure, cybersecurity and cloud support.",
                points: const [
                  "Infrastructure Services",
                  "Cybersecurity",
                  "Managed IT",
                  "Cloud Solutions",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ITAndTechServicesScreen(),
                    ),
                  );
                },
              ),

              ServiceCardWidget(
                icon: Icons.campaign,
                iconColor: const Color(0xFF19C37D),
                title: "Digital Marketing",
                description:
                    "Strategic marketing campaigns including email, WhatsApp and SMS marketing.",
                points: const [
                  "Email Marketing",
                  "WhatsApp Marketing",
                  "SMS Campaigns",
                  "Analytics",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DigitalMarketing()),
                  );
                },
              ),

              ServiceCardWidget(
                icon: Icons.brush,
                iconColor: Colors.pinkAccent,
                title: "Graphic Design",
                description:
                    "Professional branding and design services to create compelling visual identities.",
                points: const [
                  "Brand Identity",
                  "Marketing Design",
                  "Digital Graphics",
                  "Print Design",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GraphicDesign()),
                  );
                },
              ),

              ServiceCardWidget(
                icon: Icons.psychology,
                iconColor: const Color(0xFF3D5AFE),
                title: "AI Services",
                description:
                    "Machine learning, automation and AI-powered solutions to modernize your business.",
                points: const [
                  "Machine Learning",
                  "Computer Vision",
                  "Generative AI",
                  "AI Automation",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AiServices()),
                  );
                },
              ),

              ServiceCardWidget(
                icon: Icons.cloud_outlined,
                iconColor: Colors.lightBlue,
                title: "Cloud Solutions",
                description:
                    "Scalable cloud infrastructure ensuring reliability, security and cost efficiency.",
                points: const [
                  "Cloud Migration",
                  "Cloud Infrastructure",
                  "Disaster Recovery",
                  "Cloud Optimization",
                ],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CloudSolutions()),
                  );
                },
              ),

              SizedBox(height: 36),
              const Text(
                "VOICES FROM \nTHE DESK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 14.0),
                  child: Text(
                    '𝐏𝐑𝐎𝐅𝐄𝐒𝐒𝐈𝐎𝐍𝐀𝐋 𝐏𝐄𝐑𝐒𝐏𝐄𝐂𝐓𝐈𝐕𝐄𝐒 𝐃𝐄𝐒𝐈𝐆𝐍𝐄𝐃 𝐓𝐎 𝐈𝐍𝐅𝐎𝐑𝐌, 𝐈𝐍𝐒𝐏𝐈𝐑𝐄, 𝐀𝐍𝐃 𝐄𝐌𝐏𝐎𝐖𝐄𝐑',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 18),
                  children: const [
                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, we turn vision into purpose empowering growth through innovation and trust. From legal to digital and financial solutions, we simplify challenges, build partnerships, and shape a sustainable future together.",
                      teamName: "Director",
                    ),

                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, our HR team empowers people to grow and succeed. We value talent, nurture potential, and foster a culture of respect, inclusion, and excellence that drives and organizational success",
                      teamName: "HR Department",
                    ),

                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, Our Marketing & Sales team turns strategy into impact. We craft powerful brand stories, build lasting client relationships, and drive growth through innovation with customer needs and market trends",
                      teamName: "Marketing Team",
                    ),

                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, Our Legal Department safeguards the company’s values and vision. We ensure compliance, manage risk, and uphold ethics empowering every decision with trust, transparency, and legal precision ",
                      teamName: "Legal Team",
                    ),

                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, Our Software Development team builds smart digital solutions. We create, code, and optimize technology that drives growth, efficiency, and seamless experiences for our clients and users.",
                      teamName: "Tech Team",
                    ),

                    DeskVoiceCard(
                      quote:
                          "At AL-Mawa International, Our Design Team transforms ideas into striking visuals. We craft creative designs that enhance brand identity and deliver impactful, memorable experiences for our clients and users.",
                      teamName: "Design Team",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),
              const AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
