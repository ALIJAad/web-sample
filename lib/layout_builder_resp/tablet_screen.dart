import 'package:flutter/material.dart';
import 'package:webdesign/widgets/box.dart';
import 'package:webdesign/widgets/tile.dart';

import '../constants.dart';

class TabletScreenLayout extends StatefulWidget {
  const TabletScreenLayout({super.key});

  @override
  State<TabletScreenLayout> createState() => _TabletScreenLayoutState();
}

class _TabletScreenLayoutState extends State<TabletScreenLayout> {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 3,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return MyTile(
                    child: Text(
                      'Tablet',
                      style: TextStyle(fontSize: 32),
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
