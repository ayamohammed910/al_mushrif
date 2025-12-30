import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;
  final FontWeight? valueWeight;

  const InfoRow(
      this.title,
      this.value, {
        super.key,
        this.valueColor,
        this.valueWeight,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              "$title :",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),

          // Value
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: valueWeight ?? FontWeight.w400,
                color: valueColor ?? Colors.black54,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}