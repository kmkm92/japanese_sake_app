import 'package:flutter/material.dart';
import 'package:japanese_sake_app/ui/screens/my_sake_list_screen.dart';
import 'package:japanese_sake_app/ui/screens/sake_list_screen.dart';
import 'package:japanese_sake_app/ui/screens/my_store_list_screen.dart';
import 'package:japanese_sake_app/ui/screens/setting_screen.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> screen = [
    SakeListScreen(),
    MySakeListScreen(),
    MyStoreListScreen(),
    SettingScreen(),
  ];
  late String title;

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '銘柄リスト',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: '飲んだ日本酒',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: '店',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
    );
  }
}
