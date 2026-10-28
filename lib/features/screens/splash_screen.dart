import 'package:almawa_app/features/home/festive_banners/service/festive_banner_service.dart';
import 'package:almawa_app/shared/images/shared_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Preload festive banner data & images during the splash animation
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FestiveBannerService.preloadBanners(context);
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // ✅ Scale Animation (Small → Big)
    _scaleAnimation = Tween<double>(
      begin: 0.3,
      end: 1.2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Start Animation
    _controller.forward();

    // ✅ Navigate after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: SvgPicture.asset(SharedImages.alMawaLogo, height: 120),
        ),
      ),
    );
  }
}
