import 'package:flutter/material.dart';
import 'package:webdesign/constants.dart';

import '../widgets/box.dart';
import '../widgets/tile.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[300],
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 2.4,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return MyTile(
                    child: Text(
                      'Mobile',
                      style: TextStyle(fontSize: 22),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
