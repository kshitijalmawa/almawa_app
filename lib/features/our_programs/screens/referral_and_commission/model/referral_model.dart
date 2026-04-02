class ReferralModel {
  final String fullName;
  final String emailAddress;
  final String phoneNumber;
  final String companyName;
  final String designationPosition;
  final String referralSource;
  final String interestedServices;
  final String clientDetails;
  final String message;

  ReferralModel({
    required this.fullName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.companyName,
    required this.designationPosition,
    required this.referralSource,
    required this.interestedServices,
    required this.clientDetails,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "companyName": companyName,
      "designationPosition": designationPosition,
      "referralSource": referralSource,
      "interestedServices": interestedServices,
      "clientDetails": clientDetails,
      "message": message,
    };
  }
}
