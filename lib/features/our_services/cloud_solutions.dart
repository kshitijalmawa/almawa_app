import 'package:almawa_app/shared/enquiry/dialog/enquiry_dialog.dart';
import 'package:flutter/material.dart';

void showEnquiryDialog(BuildContext context) {
  showDialog(context: context, builder: (_) => const EnquiryDialog());
}

class CloudSolutions extends StatelessWidget {
  const CloudSolutions({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cloud Solutions",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
        
              const SizedBox(height: 20),
        
              const Text(
                "Explore our Cloud Solutions offering.\n"
                "Reach out to get a tailored plan for your business.",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  color: Colors.black54,
                ),
              ),
        
              const SizedBox(height: 40),
        
              /// Send Enquiry Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    showEnquiryDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 40),
                    elevation: 0,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Send Enquiry",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
        
              const SizedBox(height: 16),
        
              /// Back to Services Button
              SizedBox(
                width: double.infinity,
                height: 48, // ✅ Same height as Send Enquiry
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Color(0xFFE0E0E0)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // ✅ Match primary button
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Back to Services",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w600, // ✅ Match weight for consistency
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
