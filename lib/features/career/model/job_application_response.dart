class JobApplicationResponse {
  final bool success;
  final String message;
  final ApplicationData? data;

  JobApplicationResponse({
    required this.success,
    required this.message,
    this.data,
  });

  factory JobApplicationResponse.fromJson(Map<String, dynamic> json) {
    return JobApplicationResponse(
      success: json["success"] ?? false,
      message: json["message"] ?? "",
      data: json["data"] != null
          ? ApplicationData.fromJson(json["data"])
          : null,
    );
  }
}

class ApplicationData {
  final String id;
  final String resumeUrl;
  final String publicId;

  ApplicationData({
    required this.id,
    required this.resumeUrl,
    required this.publicId,
  });

  factory ApplicationData.fromJson(Map<String, dynamic> json) {
    return ApplicationData(
      id: json["id"] ?? "",
      resumeUrl: json["resumeUrl"] ?? "",
      publicId: json["publicId"] ?? "",
    );
  }
}
