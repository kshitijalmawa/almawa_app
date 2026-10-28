import 'dart:convert';
import 'package:almawa_app/features/home/festive_banners/model/festive_banner_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FestiveBannerService {
  static const String _baseUrl =
      'https://www.al-mawa.international/api/banners?activeOnly=true';

  static List<FestiveBannerModel>? _cachedBanners;

  static List<FestiveBannerModel>? get cachedBanners => _cachedBanners;

  /// Preload banners and their images during splash screen or app start
  static Future<void> preloadBanners(BuildContext context) async {
    try {
      final banners = await getFestiveBanners();
      for (final banner in banners) {
        if (context.mounted && banner.imageUrl.isNotEmpty) {
          precacheImage(
            NetworkImage(banner.imageUrl),
            context,
          ).catchError((_) {});
        }
      }
    } catch (_) {}
  }

  static Future<List<FestiveBannerModel>> getFestiveBanners({
    bool forceRefresh = false,
  }) async {
    if (!forceRefresh && _cachedBanners != null && _cachedBanners!.isNotEmpty) {
      return _cachedBanners!;
    }

    try {
      final response = await http.get(
        Uri.parse(_baseUrl),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);

        if (jsonData['success'] == true && jsonData['data'] is List) {
          final List<dynamic> data = jsonData['data'];
          final banners =
              data.map((item) => FestiveBannerModel.fromJson(item)).toList();

          banners.sort((a, b) => a.order.compareTo(b.order));
          _cachedBanners = banners;
          return banners;
        } else {
          throw Exception('API returned success: false or invalid data format');
        }
      } else {
        throw Exception(
          'Failed to load festive banners. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      if (_cachedBanners != null) return _cachedBanners!;
      throw Exception('Error fetching festive banners: $e');
    }
  }
}
