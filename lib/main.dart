import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

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
                Image(image: AssetImage("images/1.png")),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Image(image: AssetImage("images/2.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
