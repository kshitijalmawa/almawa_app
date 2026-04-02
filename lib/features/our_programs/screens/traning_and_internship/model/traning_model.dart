class TraningModel {
  final String fullName;
  final String emailAddress;
  final String phoneNumber;
  final String courseOfInterest;
  final String message;

  TraningModel({
    required this.fullName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.courseOfInterest,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "courseOfInterest": courseOfInterest,
      "message": message,
    };
  }
}
