import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:webdesign/food_ui/screens/home_page.dart';
import 'package:webdesign/layout_builder_resp/desktop_screen.dart';
import 'package:webdesign/layout_builder_resp/mobile_Screen.dart';
import 'package:webdesign/layout_builder_resp/responsive.dart';
import 'package:webdesign/layout_builder_resp/tablet_screen.dart';
import 'package:webdesign/media_query/layout.dart';
import 'package:webdesign/routing_lesson/pages/page2.dart';
import 'package:webdesign/routing_lesson/pages/page3.dart';

import 'routing_lesson/pages/page1.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static const String title = 'Gorouter Routes';

  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (context, state) {
              return Pagetwo();
            },
          ),
          GoRoute(
            path: 'page2',
            builder: (context, state) {
              return Pagethree();
            },
          )
        ],
        path: '/',
        builder: (context, state) {
          return Pageone();
        },
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
