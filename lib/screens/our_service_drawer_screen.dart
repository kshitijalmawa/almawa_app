import 'package:almawa_app/our_services/ai_services.dart';
import 'package:almawa_app/our_services/digital_marketing.dart';
import 'package:almawa_app/our_services/graphic_design.dart';
import 'package:almawa_app/our_services/it_and_tech_services.dart';
import 'package:almawa_app/our_services/web_devlopment_screen.dart';
import 'package:flutter/material.dart';

class OurServicesDrawerScreen extends StatelessWidget {
  const OurServicesDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Our Services",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),

                const SizedBox(height: 12),
                const Divider(),

                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios, size: 16),
                        SizedBox(width: 8),
                        Text("Back to Menu", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),

                const Divider(),
                const SizedBox(height: 8),

                // ✅ Web Development
                ExpandableServiceTile(
                  title: "Web Development",
                  subItems: const [
                    "Website Designing & Development Services",
                    "Website Design Services",
                    "Website Development Services",
                    "E-commerce Development",
                    "Web Hosting & Domain Services",
                    "Performance & Security Optimization",
                    "Website Maintenance & Support",
                  ],
                  onNavigate: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WebDevlopmentScreen(),
                      ),
                    );
                  },
                ),

                ExpandableServiceTile(
                  title: "IT & Tech Services",
                  subItems: const [
                    "IT & Tech Services - Complete Details",
                    "Infrastructure Services",
                    "Managed IT Services",
                    "Cybersecurity Services",
                    "Cloud & DevOps Services",
                    "Software Development Services",
                    "IT Consulting & Advisory",
                    "Data & Analytics Services",
                    "Communication & Collaboration Services",
                    "IT Support & Helpdesk Services",
                  ],
                  onNavigate: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ITAndTechServicesScreen(),
                      ),
                    );
                  },
                ),

                ExpandableServiceTile(
                  title: "Digital Marketing",
                  subItems: const [
                    "Email Marketing Services",
                    "WhatsApp Marketing Services",
                    "SMS Marketing Services",
                    "Omnichannel Integration",
                    "RCS Messaging Services",
                    "Push Notification Services",
                    "Marketing Automation",
                    "Customer Journey & Drip Campaigns",
                    "Chatbot Marketing Services",
                  ],
                  onNavigate: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DigitalMarketing(),
                      ),
                    );
                  },
                ),

                ExpandableServiceTile(
                  title: "Graphic Design",
                  subItems: const [
                    "Brand Identity Design",
                    "Marketing & Promotional Design",
                    "Digital & Social Media Design",
                    "UI/UX & Web Graphics",
                    "Corporate & Office Branding",
                    "Motion Graphics & Multimedia Design",
                    "lllustration & Creative Art",
                    "Print & Publishing Design",
                    "Packaging & Product Branding",
                  ],
                  onNavigate: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const GraphicDesign()),
                    );
                  },
                ),

                ExpandableServiceTile(
                  title: "AI Services",
                  subItems: const [
                    "Machine Learning (ML) Services",
                    "Natural Language Processing (NLP) Services",
                    "Computer Vision Services",
                    "Generative Al Services",
                    "Al Automation Services",
                    "Data & Analytics Al Services",
                    "Al in Cybersecurity",
                    "Industry-Specific Al Solutions",
                    "Al Infrastructure & MLOps",
                    "Al Training & Support",
                  ],
                  onNavigate: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AiServices()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandableServiceTile extends StatefulWidget {
  final String title;
  final List<String> subItems;
  final VoidCallback onNavigate;

  const ExpandableServiceTile({
    super.key,
    required this.title,
    required this.subItems,
    required this.onNavigate,
  });

  @override
  State<ExpandableServiceTile> createState() => _ExpandableServiceTileState();
}

class _ExpandableServiceTileState extends State<ExpandableServiceTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: widget.onNavigate,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ],
        ),

        if (isExpanded)
          Column(
            children: widget.subItems.map((text) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("• ", style: TextStyle(fontSize: 16)),
                    Expanded(
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
