import 'package:almawa_app/drawer_screens/it_and_tech_services.dart';
import 'package:almawa_app/drawer_screens/web_devlopment_screen.dart';
import 'package:flutter/material.dart';

class OurServicesDrawerScreen extends StatelessWidget {
  const OurServicesDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Our Services',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
                      Text('Back to Menu', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),

              const Divider(),
              const SizedBox(height: 8),

              _serviceItem('Web Development', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WebDevlopmentScreen(),
                  ),
                );
              }),
              _serviceItem('IT & Tech Services', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ITAndTechServicesScreen(),
                  ),
                );
              }),

              _serviceItem('Digital Marketing', () {
                debugPrint('Digital Marketing tapped');
              }),

              _serviceItem('Graphic Design', () {
                debugPrint('Graphic Design tapped');
              }),

              _serviceItem('AI Services', () {
                debugPrint('AI Services tapped');
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _serviceItem(String title, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    ),
  );
}
}