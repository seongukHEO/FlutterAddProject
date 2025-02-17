import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_2/user_chat.dart';
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
      //어느 화면을 선택 하느냐에 따라 앱바를 어떻게 해줄 것인지
      appBar: index == 0 ?AppBar(
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
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return UserChat();
                  }));
                });
              },
              icon: Icon(CupertinoIcons.paperplane, size: 32,)
          ),
        ],
      ) : null,
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
