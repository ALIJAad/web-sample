import 'package:flutter/material.dart';
import 'package:webdesign/main.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Go to page two '),
            ),
          ],
        ),
      ),
    );
  }
}
