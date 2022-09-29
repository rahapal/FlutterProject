import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List<Widget> myWidth = <Widget>[
    hamroOption('Welcome to home', Color(0xFF3944F7)),
    hamroOption('Welcome to about', Color(0xFFB4161B)),
    hamroOption('Welcome to setting', Color(0xFF3DBE29)),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'about',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(child: myWidth.elementAt(_selectedIndex)),
    );
  }
}

class hamroOption extends StatelessWidget {
  final String title;
  final Color color;
  hamroOption(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
