class FestiveBannerModel {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String link;
  final int order;
  final bool isActive;
  final String altText;
  final String createdAt;
  final String updatedAt;

  FestiveBannerModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.link,
    required this.order,
    required this.isActive,
    required this.altText,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FestiveBannerModel.fromJson(Map<String, dynamic> json) {
    return FestiveBannerModel(
      id: json['_id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      imageUrl: json['imageUrl']?.toString() ?? '',
      description: json['description']?.toString() ?? '',
      link: json['link']?.toString() ?? '',
      order: json['order'] is int
          ? json['order'] as int
          : int.tryParse(json['order']?.toString() ?? '0') ?? 0,
      isActive: json['isActive'] is bool ? json['isActive'] as bool : true,
      altText: json['altText']?.toString() ?? '',
      createdAt: json['createdAt']?.toString() ?? '',
      updatedAt: json['updatedAt']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'imageUrl': imageUrl,
      'description': description,
      'link': link,
      'order': order,
      'isActive': isActive,
      'altText': altText,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
