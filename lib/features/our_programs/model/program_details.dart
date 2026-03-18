class ProgramDetails {
  final String overview;
  final List<String> whatYouWillLearn;
  final List<String> whoIsThisFor;

  ProgramDetails({
    required this.overview,
    required this.whatYouWillLearn,
    required this.whoIsThisFor,
  });

  factory ProgramDetails.fromJson(Map<String, dynamic> json) {
    return ProgramDetails(
      overview: json['overview'] ?? '',
      whatYouWillLearn: List<String>.from(json['whatYouWillLearn'] ?? []),
      whoIsThisFor: List<String>.from(json['whoIsThisFor'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'overview': overview,
      'whatYouWillLearn': whatYouWillLearn,
      'whoIsThisFor': whoIsThisFor,
    };
  }
}

class ProgramModel {
  final String id;
  final String iconKey;
  final String slug;
  final String title;
  final String desc;
  final ProgramDetails details;
  final String createdAt;
  final String updatedAt;

  ProgramModel({
    required this.id,
    required this.iconKey,
    required this.slug,
    required this.title,
    required this.desc,
    required this.details,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProgramModel.fromJson(Map<String, dynamic> json) {
    return ProgramModel(
      id: json['_id'] ?? '',
      iconKey: json['iconKey'] ?? '',
      slug: json['slug'] ?? '',
      title: json['title'] ?? '',
      desc: json['desc'] ?? '',
      details: ProgramDetails.fromJson(json['details'] ?? {}),
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'iconKey': iconKey,
      'slug': slug,
      'title': title,
      'desc': desc,
      'details': details.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
