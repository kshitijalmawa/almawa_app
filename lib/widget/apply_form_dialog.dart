import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
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

  Future<void> _pickFile() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text("Upload from Gallery"),
                onTap: () async {
                  Navigator.pop(context);
                  final picker = ImagePicker();
                  final image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  if (image != null) {
                    setState(() {
                      selectedFile = File(image.path);
                      fileName = image.name;
                    });
                  }
                },
              ),
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
            ],
          ),
        );
      },
    );
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
                    // First Name
                    _inputField("First Name"),
                    const SizedBox(height: 16),

                    // Last Name
                    _inputField("Last Name"),
                    const SizedBox(height: 16),

                    _inputField("Email Address"),
                    const SizedBox(height: 16),

                    _inputField("Phone Number"),
                    const SizedBox(height: 16),

                    _inputField("Years of Experience"),
                    const SizedBox(height: 16),

                    _inputField("Cover Letter", maxLines: 4),
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
                            onPressed: () => Navigator.pop(context),
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (fileName == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Please upload resume"),
                                    ),
                                  );
                                  return;
                                }

                                Navigator.pop(context);
                              }
                            },
                            child: const Text("Submit Application"),
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

  Widget _inputField(String label, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Required";
        }
        return null;
      },
    );
  }
}
