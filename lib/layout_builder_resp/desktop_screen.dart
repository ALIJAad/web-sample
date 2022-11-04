import 'package:flutter/material.dart';
import 'package:webdesign/constants.dart';
import 'package:webdesign/widgets/tile.dart';
import '../widgets/box.dart';

class DeskTopScreen extends StatefulWidget {
  const DeskTopScreen({super.key});

  @override
  State<DeskTopScreen> createState() => _DeskTopScreenState();
}

class _DeskTopScreenState extends State<DeskTopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1222),
          child: Row(
            children: [
              myDrawer,
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    // first 4 boxes in grid
                    AspectRatio(
                      aspectRatio: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                            child: const Text(
                              'Desktop',
                              style: TextStyle(fontSize: 54),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        // height: 245,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
