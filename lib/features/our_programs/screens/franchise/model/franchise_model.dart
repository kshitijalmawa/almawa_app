class FranchiseModel {
  final String fullName;
  final String emailAddress;
  final String phoneNumber;
  final String businessName;
  final String location;
  final String yearsOfExperience;
  final String investmentCapacity;
  final String businessBackground;
  final String message;

  FranchiseModel({
    required this.fullName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.businessName,
    required this.location,
    required this.yearsOfExperience,
    required this.investmentCapacity,
    required this.businessBackground,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "businessName": businessName,
      "location": location,
      "yearsOfExperience": yearsOfExperience,
      "investmentCapacity": investmentCapacity,
      "businessBackground": businessBackground,
      "message": message,
    };
  }
}
