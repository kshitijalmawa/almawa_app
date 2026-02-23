class ContactModel {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;
  final String mobileNumber;
  final String selectedCountry;
  final String subject;
  final String tellUsAboutYou;
  final String? id;
  final int? v;

  ContactModel({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.mobileNumber,
    required this.selectedCountry,
    required this.subject,
    required this.tellUsAboutYou,
    this.id,
    this.v,
  });

  Map<String, dynamic> toJson() {
    return {
      "firstname": firstName,
      "lastName": lastName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "mobileNumber": mobileNumber,
      "selecetCountry": selectedCountry,
      "subject": subject,
      "tellUSAboutYou": tellUsAboutYou,
    };
  }

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      firstName: json["firstName"] ?? "",
      lastName: json["lastName"] ?? "",
      emailAddress: json["emailAddress"] ?? "",
      phoneNumber: json["phoneNumber"]?.toString() ?? "",
      mobileNumber: json["mobileNumber"]?.toString() ?? "",
      selectedCountry: json["selecetCountry"] ?? "",
      subject: json["subject"] ?? "",
      tellUsAboutYou: json["tellUSAboutYou"] ?? "",
      id: json["_id"],
      v: json["__v"],
    );
  }
}
