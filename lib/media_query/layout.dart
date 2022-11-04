import 'package:flutter/material.dart';
import 'package:webdesign/constants.dart';
import 'package:webdesign/media_query/responsive.dart';
import 'package:webdesign/widgets/tile.dart';
import '../widgets/box.dart';

class DeskTopMedia extends StatefulWidget {
  const DeskTopMedia({super.key});

  @override
  State<DeskTopMedia> createState() => _DeskTopMediaState();
}

class _DeskTopMediaState extends State<DeskTopMedia> {
  bool isvisible() {
    if (!Responsive.isDesktop(context)) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? myAppBar
          : AppBar(
              backgroundColor: Colors.grey[900],
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      backgroundColor: Colors.yellow,
      drawer: !Responsive.isDesktop(context) ? myDrawer : null,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1440),
          child: Row(
            children: [
              Visibility(visible: isvisible(), child: myDrawer),
              // myDrawer,
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    // first 4 boxes in grid
                    const Responsive(
                      mobile: Grid(
                        aspectRatio: 2.5,
                        crossAxisCount: 2,
                      ),
                      desktop: Grid(
                        aspectRatio: 3,
                        crossAxisCount: 4,
                      ),
                      tablet: Grid(
                        aspectRatio: 4,
                        crossAxisCount: 3,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return MyTile(
                            child: const Text(
                              'Desktop MediaQuery ',
                              style: TextStyle(fontSize: 54),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isvisible(),
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return MyTile(
                        child: const Text(
                          'CommentSection',
                          style: TextStyle(fontSize: 21),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
    required this.crossAxisCount,
    required this.aspectRatio,
  }) : super(key: key);
  final int crossAxisCount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return MyBox();
          },
        ),
      ),
    );
  }
}
