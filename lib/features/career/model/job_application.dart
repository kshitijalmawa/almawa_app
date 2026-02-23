class JobApplication {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String phoneNumber;
  final int yearOfExperience;
  final int monthsOfExperience;
  final String coverLetter;
  final String resumePath; // file path

  JobApplication({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.phoneNumber,
    required this.yearOfExperience,
    required this.monthsOfExperience,
    required this.coverLetter,
    required this.resumePath,
  });

  Map<String, String> toFields() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "emailAddress": emailAddress,
      "phoneNumber": phoneNumber,
      "yearOfExperience": yearOfExperience.toString(),
      "monthsOfExperience": monthsOfExperience.toString(),
      "coverLetter": coverLetter,
    };
  }
}
