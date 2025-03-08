// search_bar_widget.dart
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBarWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search tools...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        onChanged: onSearch,
      ),
    );
  }
}
