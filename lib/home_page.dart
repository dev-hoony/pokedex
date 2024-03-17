import 'package:flutter/material.dart';
import 'package:pokedex/home_tab.dart';
import 'package:pokedex/profile_tab.dart';
import 'package:pokedex/search_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _page = const [
    HomeTab(),
    SearchTab(),
    ProfileTab(),
  ];

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) {
          //
          setState(() {
            _index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '프로필'),
        ],
      ),
    );
  }
}
