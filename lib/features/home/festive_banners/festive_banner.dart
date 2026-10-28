import 'dart:async';
import 'package:almawa_app/features/home/festive_banners/festive_banner_detail_screen.dart';
import 'package:almawa_app/features/home/festive_banners/model/festive_banner_model.dart';
import 'package:almawa_app/features/home/festive_banners/service/festive_banner_service.dart';
import 'package:flutter/material.dart';

class FestiveBannerWidget extends StatefulWidget {
  const FestiveBannerWidget({super.key});

  @override
  State<FestiveBannerWidget> createState() => _FestiveBannerWidgetState();
}

class _FestiveBannerWidgetState extends State<FestiveBannerWidget> {
  List<FestiveBannerModel> _banners = [];
  bool _isLoading = true;
  late final PageController _pageController;
  Timer? _autoScrollTimer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0);

    // If banners are already preloaded (e.g. from splash screen), use them immediately!
    final cached = FestiveBannerService.cachedBanners;
    if (cached != null && cached.isNotEmpty) {
      _banners = cached.where((b) => b.isActive).toList();
      _isLoading = false;
      const initialPage = 1000;
      _currentPage = initialPage;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_pageController.hasClients) {
          _pageController.jumpToPage(initialPage);
        }
        _startAutoScroll();
      });
    } else {
      _fetchBanners();
    }
  }

  Future<void> _fetchBanners() async {
    try {
      final banners = await FestiveBannerService.getFestiveBanners();
      if (mounted) {
        final active = banners.where((b) => b.isActive).toList();

        // Precache the first image so it renders immediately without blank delay
        if (active.isNotEmpty && mounted) {
          await precacheImage(
            NetworkImage(active.first.imageUrl),
            context,
          ).catchError((_) {});

          // Precache remaining banners in the background
          for (final b in active.skip(1)) {
            if (mounted) {
              precacheImage(NetworkImage(b.imageUrl), context).catchError((_) {});
            }
          }
        }

        if (mounted) {
          setState(() {
            _banners = active;
            _isLoading = false;
          });

          if (_banners.isNotEmpty) {
            const initialPage = 1000;
            _currentPage = initialPage;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_pageController.hasClients) {
                _pageController.jumpToPage(initialPage);
              }
              _startAutoScroll();
            });
          }
        }
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _startAutoScroll() {
    _autoScrollTimer?.cancel();
    if (_banners.length <= 1) return;

    _autoScrollTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (_pageController.hasClients) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 650),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoading && _banners.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Top divider line
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            height: 1,
          ),
        ),
        const SizedBox(height: 18),

        // Section Title: SPECIAL. FESTIVE. OFFERS.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: "SPECIAL. "),
                TextSpan(
                  text: "FES",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "TIVE. ",
                  style: TextStyle(color: Color(0xFF0E4A68)),
                ),
                TextSpan(
                  text: "O",
                  style: TextStyle(color: Color(0xFF0E4A68)),
                ),
                TextSpan(
                  text: "F",
                  style: TextStyle(color: Color(0xFF0EA5E9)),
                ),
                TextSpan(
                  text: "F",
                  style: TextStyle(color: Color(0xFF0E4A68)),
                ),
                TextSpan(
                  text: "ERS.",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Banner Slider Section (Full width, no side clipping)
        LayoutBuilder(
          builder: (context, constraints) {
            const bannerAspect = 1581 / 995; // Exact aspect ratio of festive banners
            final cardWidth = constraints.maxWidth - 32; // 16 margin on each side
            final cardHeight = cardWidth / bannerAspect;

            if (_isLoading) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: cardHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                ),
              );
            }

            return SizedBox(
              height: cardHeight + 4,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final banner = _banners[index % _banners.length];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FestiveBannerDetailScreen(
                              banner: banner,
                              allBanners: _banners,
                            ),
                          ),
                        );
                      },
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: AspectRatio(
                          aspectRatio: bannerAspect,
                          child: Image.network(
                            banner.imageUrl,
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                            cacheWidth: 1000,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                color: Colors.grey.shade100,
                                child: const Center(
                                  child: CircularProgressIndicator(strokeWidth: 2),
                                ),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade200,
                                child: const Center(
                                  child: Icon(
                                    Icons.image_not_supported_outlined,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                );
                },
              ),
            );
          },
        ),

        // Dot Page Indicators
        if (_banners.length > 1) ...[
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_banners.length, (index) {
              final isSelected = (_currentPage % _banners.length) == index;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 3.5),
                width: isSelected ? 22 : 6,
                height: 6,
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF0E4A68)
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            }),
          ),
        ],

        const SizedBox(height: 20),
      ],
    );
  }
}
