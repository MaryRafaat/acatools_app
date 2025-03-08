// tool_model.dart
class Tool {
  final String name;
  final String description;
  final String category;

  Tool({
    required this.name,
    required this.description,
    required this.category,
  });

  // Helper method to check if tool matches search query
  bool matchesSearch(String query) {
    return name.toLowerCase().contains(query.toLowerCase()) ||
        description.toLowerCase().contains(query.toLowerCase());
  }
}