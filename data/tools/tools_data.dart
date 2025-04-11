// tool_data.dart
import 'package:acatools/data/tools/tools_model.dart';

class ToolData {
  static List<Tool> getTools() {
    return [
      Tool(
        name: "Hammer",
        description: "Basic tool for driving nails",
        category: "Carpentry",
      ),
      Tool(
        name: "Screwdriver",
        description: "Tool for driving screws",
        category: "Carpentry",
      ),
      Tool(
        name: "Wrench",
        description: "Tool for turning nuts and bolts",
        category: "Mechanical",
      ),
      Tool(
        name: "Pliers",
        description: "Tool for gripping small objects",
        category: "Electrical",
      ),
    ];
  }
}
