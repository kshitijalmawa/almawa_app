import 'package:almawa_app/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CareersScreen extends StatefulWidget {
  const CareersScreen({super.key});

  @override
  State<CareersScreen> createState() => _CareersScreenState();
}

class _CareersScreenState extends State<CareersScreen> {
  String selectedDepartment = "All Departments";

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
                  // Search Field
                  TextField(
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
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
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

                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 250,
                        offset: const Offset(0, 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                      ),

                      iconStyleData: const IconStyleData(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 22,
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

                  // Location Box
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
              children: [
                JobCard(
                  title: "DATA ENTRY/BACK OFFICE EXECUTIVE",
                  description:
                      "• Enter and update data accurately across systems and spreadsheets.\n"
                      "• Verify information, correct errors, and maintain clean data records.\n"
                      "• Prepare reports and organize documents.\n"
                      "• Maintain confidentiality of all sensitive information.\n"
                      "• Assist in basic administrative and clerical tasks.\n"
                      "• Ensure timely completion of assigned data tasks.",

                  requirements: [
                    "HIGH TYPING SPEED WITH ACCURACY",
                    "PROFICIENCY IN MS EXCEL, WORD, BASIC COMPUTER OPERATIONS",
                    "STRONG ATTENTION TO DETAIL AND GOOD ORGANIZATIONAL SKILLS",
                  ],

                  department: "Operations",
                  location: "Pune, India",
                  type: "Full-time",
                  salary: "Competitive",
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
