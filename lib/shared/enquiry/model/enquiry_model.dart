class EnquiryData {
  final String fullName;
  final String email;
  final String number;
  final String companyName; 
  final String serviceInterestedIn;
  final String projectDetails;
  final String id;
  final int version;

  EnquiryData({
    required this.fullName,
    required this.email,
    required this.number,
    required this.companyName, 
    required this.serviceInterestedIn,
    required this.projectDetails,
    required this.id,
    required this.version,
  });

  factory EnquiryData.fromJson(Map<String, dynamic> json) {
    return EnquiryData(
      fullName: json['fullName'] ?? '',
      email: json['Email'] ?? '',
      number: json['Number'].toString(),
      companyName: json['CompanyName'] ?? '', 
      serviceInterestedIn: json['ServiceIntrestedIn'] ?? '',
      projectDetails: json['ProjectDetails'] ?? '',
      id: json['_id'] ?? '',
      version: json['__v'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'Email': email,
      'Number': number,
      'CompanyName': companyName, 
      'ServiceIntrestedIn': serviceInterestedIn,
      'ProjectDetails': projectDetails,
      '_id': id,
      '__v': version,
    };
  }
}
