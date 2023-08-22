import 'package:flutter/material.dart';
import 'package:we_recommend/screens/books_screen.dart';
import 'package:we_recommend/screens/games_screen.dart';
import 'package:we_recommend/screens/home_screen.dart';
import 'package:we_recommend/screens/movies_screen.dart';
import 'package:we_recommend/screens/music_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Widget> _pages;
  late List<String> _pagesTitles;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      HomeScreen(),
      BooksScreen(),
      MusicScreen(),
      MoviesScreen(),
      GamesScreen(),
    ];
    _pagesTitles = ['Home', 'Books', 'Music', 'Movies', 'Games'];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pagesTitles[_selectedPageIndex],
        ),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.book),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(Icons.gamepad),
            label: 'Games',
          ),
        ],
      ),
    );
  }
}
