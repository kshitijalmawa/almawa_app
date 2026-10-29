import 'dart:async';
import 'package:flutter/material.dart';

class CityBranch {
  final String name;
  final String imagePath;

  const CityBranch({required this.name, required this.imagePath});
}

class UpcomingBranchesWidget extends StatefulWidget {
  const UpcomingBranchesWidget({super.key});

  @override
  State<UpcomingBranchesWidget> createState() => _UpcomingBranchesWidgetState();
}

class _UpcomingBranchesWidgetState extends State<UpcomingBranchesWidget> {
  int _currentIndex = 0;
  Timer? _autoPlayTimer;

  static const List<CityBranch> _cities = [
    CityBranch(name: 'Ahmedabad', imagePath: 'assets/images/Ahmedabad.png'),
    CityBranch(name: 'Jaipur', imagePath: 'assets/images/Jaipur.png'),
    CityBranch(name: 'Lucknow', imagePath: 'assets/images/Lucknow.png'),
    CityBranch(name: 'Bengaluru', imagePath: 'assets/images/Bengaluru.png'),
    CityBranch(name: 'Bhubaneswar', imagePath: 'assets/images/Bhubaneswar.png'),
    CityBranch(name: 'Chennai', imagePath: 'assets/images/Chennai.png'),
    CityBranch(name: 'Goa', imagePath: 'assets/images/Goa.png'),
    CityBranch(name: 'Guwahati', imagePath: 'assets/images/Guwahati.png'),
    CityBranch(name: 'Hyderabad', imagePath: 'assets/images/Hyderabad.png'),
    CityBranch(name: 'Indore', imagePath: 'assets/images/Indore.png'),
    CityBranch(name: 'Kochi', imagePath: 'assets/images/Kochi.png'),
    CityBranch(name: 'Kolkata', imagePath: 'assets/images/Kolkata.png'),
    CityBranch(name: 'Mumbai', imagePath: 'assets/images/Mumbai.png'),
    CityBranch(name: 'New Delhi', imagePath: 'assets/images/New Delhi.png'),
    CityBranch(name: 'Patna', imagePath: 'assets/images/patna.png'),
    CityBranch(name: 'Pune', imagePath: 'assets/images/pune.png'),
    CityBranch(name: 'Raipur', imagePath: 'assets/images/Raipur.png'),
    CityBranch(name: 'Surat', imagePath: 'assets/images/surat.png'),
  ];

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    super.dispose();
  }

  void _startAutoPlay() {
    _autoPlayTimer?.cancel();
    _autoPlayTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (mounted) {
        _nextCity(auto: true);
      }
    });
  }

  void _previousCity({bool auto = false}) {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      } else {
        _currentIndex = _cities.length - 1;
      }
    });
    if (!auto) {
      _startAutoPlay();
    }
  }

  void _nextCity({bool auto = false}) {
    setState(() {
      if (_currentIndex < _cities.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
    });
    if (!auto) {
      _startAutoPlay();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentCity = _cities[_currentIndex];

    return Column(
      children: [
        const SizedBox(height: 24),

        // Top circular location pin icon
        Container(
          width: 56,
          height: 56,
          decoration: const BoxDecoration(
            color: Color(0xFFE0F2FE),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.location_on_outlined,
              color: Color(0xFF0284C7),
              size: 28,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Subtitle tag: PAN-INDIA EXPANSION
        const Text(
          "PAN-INDIA EXPANSION",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.0,
            color: Color(0xFFC88514),
          ),
        ),

        const SizedBox(height: 8),

        // Section Title: Upcoming Branches
        const Text(
          "Upcoming Branches",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Color(0xFF0F2646),
            height: 1.2,
          ),
        ),

        const SizedBox(height: 14),

        // Description text
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Al-Mawa is growing across India. Explore the cities where we're planning to welcome you next.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Color(0xFF475569),
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Single Branch Card with interactive changing content
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity != null) {
              if (details.primaryVelocity! < -100) {
                _nextCity();
              } else if (details.primaryVelocity! > 100) {
                _previousCity();
              }
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Image Container with Overlays
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        // Smoothly animated city image
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: Image.asset(
                            currentCity.imagePath,
                            key: ValueKey<String>(currentCity.imagePath),
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 240,
                            gaplessPlayback: true,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                key: ValueKey<String>(
                                  "error_${currentCity.imagePath}",
                                ),
                                color: const Color(0xFFE2E8F0),
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.image_outlined,
                                        color: Color(0xFF94A3B8),
                                        size: 44,
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        currentCity.name,
                                        style: const TextStyle(
                                          color: Color(0xFF64748B),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        // Gradient overlay for contrast on image
                        DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.1),
                                Colors.black.withValues(alpha: 0.75),
                              ],
                              stops: const [0.4, 0.65, 1.0],
                            ),
                          ),
                        ),

                        // City counter pill badge (top-left)
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.95),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Text(
                              "${_currentIndex + 1} / ${_cities.length} cities",
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1E293B),
                              ),
                            ),
                          ),
                        ),

                        // Left arrow circular navigation button
                        Positioned(
                          left: 14,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: _previousCity,
                                borderRadius: BorderRadius.circular(22),
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.25,
                                        ),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Color(0xFF1E293B),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Right arrow circular navigation button
                        Positioned(
                          right: 14,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: _nextCity,
                                borderRadius: BorderRadius.circular(22),
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(
                                          alpha: 0.25,
                                        ),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xFF1E293B),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Text overlay at the bottom of the image
                        Positioned(
                          bottom: 16,
                          left: 20,
                          right: 20,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "EXPANDING ACROSS INDIA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.8,
                                  color: Colors.white.withValues(alpha: 0.95),
                                ),
                              ),
                              const SizedBox(height: 4),
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 250),
                                child: Text(
                                  currentCity.name,
                                  key: ValueKey<String>(
                                    "img_txt_${currentCity.name}",
                                  ),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black45,
                                        offset: Offset(0, 2),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Bottom details inside the single card
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: Text(
                            currentCity.name,
                            key: ValueKey<String>(
                              "body_title_${currentCity.name}",
                            ),
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F2646),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 16,
                              color: Color(0xFF64748B),
                            ),
                            const SizedBox(width: 4),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 250),
                              child: Text(
                                "${currentCity.name}, India",
                                key: ValueKey<String>(
                                  "body_loc_${currentCity.name}",
                                ),
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF64748B),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Coming Soon · Stay Updated",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFC88514),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
