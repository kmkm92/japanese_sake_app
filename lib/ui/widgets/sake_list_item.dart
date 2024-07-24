import 'package:flutter/material.dart';
import '../../models/api_response.dart';

class SakeListItem extends StatelessWidget {
  final Brand sake;
  final VoidCallback onTap;

  SakeListItem({required this.sake, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sake.name),
      onTap: onTap,
    );
  }
}
