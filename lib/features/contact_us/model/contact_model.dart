class ContactModel {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;
  final String mobileNumber;
  final String selecetCountry; 
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
    required this.selecetCountry,
    required this.subject,
    required this.tellUsAboutYou,
    this.id,
    this.v,
  });

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "mobileNumber": mobileNumber,
      "selectCountry": selecetCountry,
      "subject": subject,
      "tellUsAboutYou": tellUsAboutYou,
    };
  }


  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      firstName: json["firstName"] ?? "",
      lastName: json["lastName"] ?? "",
      emailAddress: json["emailAddress"] ?? "",
      phoneNumber: json["phoneNumber"]?.toString() ?? "",
      mobileNumber: json["mobileNumber"]?.toString() ?? "",
      selecetCountry: json["selectCountry"] ?? "",
      subject: json["subject"] ?? "",
      tellUsAboutYou: json["tellUsAboutYou"] ?? "",
      id: json["_id"],
      v: json["__v"],
    );
  }
}
