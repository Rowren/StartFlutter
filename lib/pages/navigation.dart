import 'package:flutter/material.dart';

class HomePageNav extends StatefulWidget {
  const HomePageNav({super.key});

  @override
  State<HomePageNav> createState() => _HomePageNavState();
}

class _HomePageNavState extends State<HomePageNav> {
  int _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IT Nav'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: _navIndex,
        children: [
          //home
          Center(
            child: Text('Home'),
          ),
          //call
          Center(
            child: Text('call'),
          ),
          //feed
          Center(
            child: Text('Feed'),
          ),
          //Chat,
          Center(
            child: Text('Chat'),
          ),
          //Setting
          Center(
            child: Text('Setting'),
          ),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _navIndex,
        onTap: (value) {
          setState(() {
            _navIndex = value;
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'home'
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            activeIcon: Icon(Icons.call),
            label: 'call'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed_outlined),
            activeIcon: Icon(Icons.rss_feed),
            label: 'call'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            activeIcon: Icon(Icons.chat),
            label: 'chat'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'setting'
            ),
         
          
        ],
      ),
    );
  }
}
