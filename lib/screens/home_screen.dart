// tool_list_screen.dart
import 'package:acatools/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:acatools/data/tools/tools_model.dart';
import 'package:acatools/data/tools/tools_data.dart';
import 'package:acatools/widgets/search_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: const Center(child: Text('shopping item')),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle the tap event
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Tool> allTools = ToolData.getTools();
  List<Tool> filteredTools = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    filteredTools = allTools;
  }

  void _filterTools(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredTools = allTools;
      } else {
        filteredTools =
            allTools.where((tool) => tool.matchesSearch(query)).toList();
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tool Finder'),
      ),
      body: Column(
        children: [
          SearchBarWidget(onSearch: _filterTools),
          Expanded(
            child: ListView.builder(
              itemCount: filteredTools.length,
              itemBuilder: (context, index) {
                final tool = filteredTools[index];
                return ListTile(
                  title: Text(tool.name),
                  subtitle: Text(tool.description),
                  trailing: Text(tool.category),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
