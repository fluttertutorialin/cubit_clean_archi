import 'package:flutter/material.dart';

extension StringExtensions on String {
  Color? parseColor({double? opacity}) => Color(int.parse(replaceAll('#', '0xFF'))).withOpacity(opacity ?? 1);
}

