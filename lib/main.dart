import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        useMaterial3: true
      ),
      home: InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatelessWidget {
  const InstaCloneHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram", style: GoogleFonts.lobsterTwo(fontSize: 32),),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: (){
                print(object)
              }, 
              icon: Icon(Icons.favorite_outline)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(CupertinoIcons.paperplane)
          ),
        ],
      ),
      body: Placeholder(),
    );
  }
}
