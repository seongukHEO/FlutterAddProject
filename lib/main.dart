import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black
      )
      ),
      home: InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {

  late int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram", style: GoogleFonts.lobsterTwo(fontSize: 32),),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: (){
                print("tab Favorite");
              },
              icon: Icon(Icons.favorite_outline, size: 32,)
          ),
          IconButton(
              onPressed: (){
                print("tab DM");
              },
              icon: Icon(CupertinoIcons.paperplane, size: 32,)
          ),
        ],
      ),
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex){
          setState(() {
            index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28,), label: "Search")
        ],
      ),
    );
  }
}
