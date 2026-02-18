import 'package:almawa_app/widget/apply_form_dialog.dart';
import 'package:flutter/material.dart';

class JobCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String> requirements;

  final String department;
  final String location;
  final String type;
  final String salary;

  const JobCard({
    super.key,
    required this.title,
    required this.description,
    required this.requirements,
    required this.department,
    required this.location,
    required this.type,
    required this.salary,
  });

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
          ),

          const SizedBox(height: 12),

          Text(
            widget.description,
            maxLines: expanded ? 50 : 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade800,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 8),

          GestureDetector(
            onTap: () {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Text(
              expanded ? "Show less" : "Show more",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
            ),
          ),

          const SizedBox(height: 20),

          if (expanded) ...[
            const Text(
              "Key Requirements:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),

            const SizedBox(height: 10),

            Column(
              children: widget.requirements
                  .map(
                    (req) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("•  ", style: TextStyle(fontSize: 18)),
                          Expanded(
                            child: Text(
                              req,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              "Job Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),

            const SizedBox(height: 14),

            _detailRow(Icons.business, "Department:", widget.department),
            _detailRow(
              Icons.location_on_outlined,
              "Location:",
              widget.location,
            ),
            _detailRow(Icons.work, "Type:", widget.type),
            _detailRow(Icons.currency_rupee, "Salary:", widget.salary),

            const SizedBox(height: 18),
          ],

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _tag(Icons.business, widget.department),
              _tag(Icons.location_on, widget.location),
              _tag(Icons.work, widget.type),
            ],
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                 showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return ApplyFormDialog(jobTitle: widget.title);
                  },
                );
              },
              child: const Text(
                "Apply Now  →",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _detailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.lightGreen),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tag(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: Colors.black87),
          const SizedBox(width: 6),
          Text(text, style: const TextStyle(fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
