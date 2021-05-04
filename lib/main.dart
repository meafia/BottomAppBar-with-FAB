import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'FAB & BNB',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BottomAppBar with FAB'),
        ),
        body: Center(
          child: Text(
            'Current Index: $selectedIndex',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.grey[700],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.hardEdge,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo_library),
                label: 'Gellery',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.help_center_rounded),
                label: 'Help',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedItemColor:
                ThemeData().floatingActionButtonTheme.backgroundColor,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
