import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('سنگ کاغذ قیچی'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.indigoAccent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(image: AssetImage("images/$top.png")),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      top = 3;
                      bottom = 1;
                    });
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Image(image: AssetImage("images/$bottom.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
