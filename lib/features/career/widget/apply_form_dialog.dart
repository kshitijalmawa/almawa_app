import 'dart:io';

import 'package:almawa_app/features/career/model/job_application.dart';
import 'package:almawa_app/features/career/services/job_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ApplyFormDialog extends StatefulWidget {
  final String jobTitle;

  const ApplyFormDialog({super.key, required this.jobTitle});

  @override
  State<ApplyFormDialog> createState() => _ApplyFormDialogState();
}

class _ApplyFormDialogState extends State<ApplyFormDialog> {
  final _formKey = GlobalKey<FormState>();

  String? fileName;
  File? selectedFile;
  bool _isLoading = false;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final yearsController = TextEditingController();
  final monthsController = TextEditingController(); // ← added
  final coverLetterController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    yearsController.dispose();
    monthsController.dispose();
    coverLetterController.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.picture_as_pdf),
                title: const Text("Upload PDF"),
                onTap: () async {
                  Navigator.pop(context);
                  FilePickerResult? result = await FilePicker.platform
                      .pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['pdf'],
                        withData: false,
                        withReadStream: true,
                      );
                  if (result != null && result.files.single.path != null) {
                    setState(() {
                      selectedFile = File(result.files.single.path!);
                      fileName = result.files.single.name;
                    });
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.description),
                title: const Text("Upload Word Document"),
                onTap: () async {
                  Navigator.pop(context);
                  FilePickerResult? result = await FilePicker.platform
                      .pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['doc', 'docx'],
                        withData: false,
                        withReadStream: true,
                      );
                  if (result != null && result.files.single.path != null) {
                    setState(() {
                      selectedFile = File(result.files.single.path!);
                      fileName = result.files.single.name;
                    });
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _submitApplication() async {
    if (!_formKey.currentState!.validate()) return;

    // File is now optional - only validate if a file is selected
    if (selectedFile != null) {
      // Validate file type
      final String fileExtension = selectedFile!.path.split('.').last.toLowerCase();
      if (!['pdf', 'doc', 'docx'].contains(fileExtension)) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Only PDF and Word documents are accepted."),
          ),
        );
        return;
      }

      // Validate file size (e.g., 5MB limit)
      const int maxFileSizeInBytes = 5 * 1024 * 1024; // 5 MB
      final fileSize = await selectedFile!.length();
      if (fileSize > maxFileSizeInBytes) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Resume file size exceeds the 5MB limit."),
          ),
        );
        return;
      }
    }

    setState(() => _isLoading = true);

    final application = JobApplication(
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      emailAddress: emailController.text.trim(),
      phoneNumber: phoneController.text.trim(),
      yearOfExperience: int.tryParse(yearsController.text.trim()) ?? 0,
      monthsOfExperience: int.tryParse(monthsController.text.trim()) ?? 0,
      coverLetter: coverLetterController.text.trim(),
      resumePath: selectedFile?.path ?? '',
    );

    try {
      print('Submitting application...');
      print('Resume path: ${application.resumePath}');
      
      final response = await JobService.submitApplication(
        application,
      ).timeout(const Duration(seconds: 30));

      if (!mounted) return;
      setState(() => _isLoading = false);

      print('Response: ${response.success} - ${response.message}');

      if (response.success) {
        Navigator.pop(context);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(response.message)));
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(response.message)));
      }
    } catch (e, stackTrace) {
      print('Error submitting application: $e');
      print('Stack trace: $stackTrace');
      
      if (!mounted) return;
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Submission failed: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: screenWidth > 800 ? 700 : double.infinity,
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "APPLY FOR ${widget.jobTitle}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "Fill out the form below to submit your application. We'll get back to you within 48 hours.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 25),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _inputField("First Name", firstNameController),
                    const SizedBox(height: 16),

                    _inputField("Last Name", lastNameController),
                    const SizedBox(height: 16),

                    _inputField(
                      "Email Address",
                      emailController,
                      isEmail: true,
                    ),
                    const SizedBox(height: 16),

                    _inputField("Phone Number", phoneController),
                    const SizedBox(height: 16),

                    // Years & Months in a Row
                    Row(
                      children: [
                        Expanded(
                          child: _inputField(
                            "Years of Experience",
                            yearsController,
                            isNumber: true,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _inputField(
                            "Months of Experience",
                            monthsController,
                            isNumber: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    _inputField(
                      "Cover Letter",
                      coverLetterController,
                      maxLines: 4,
                    ),
                    const SizedBox(height: 20),

                    // Resume Upload
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Resume/CV",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: _pickFile,
                          child: Container(
                            height: 52,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.upload_file,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    fileName ?? "Choose File",
                                    style: TextStyle(
                                      color: fileName == null
                                          ? Colors.blue
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // Buttons
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            onPressed: _isLoading
                                ? null
                                : () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            onPressed: _isLoading ? null : _submitApplication,
                            child: _isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    "Submit Application",
                                    style: TextStyle(color: Colors.white),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField(
    String label,
    TextEditingController controller, {
    int maxLines = 1,
    bool isEmail = false,
    bool isNumber = false,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) return "Required";
        if (isEmail && !value.contains("@")) return "Enter valid email";
        if (isNumber && int.tryParse(value) == null)
          return "Enter valid number";
        return null;
      },
    );
  }
}
