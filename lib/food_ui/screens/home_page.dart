import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:webdesign/food_ui/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(size.width, 50),
        child: const Headers(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              color: kPrimaryColor,
              height: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            AutoSizeText(
                              'Now Eat Today',
                              style: TextStyle(
                                  fontSize: 56, fontWeight: FontWeight.bold),
                              maxLines: 1,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AutoSizeText('Please Do Enjoy',
                                style: TextStyle(fontSize: 56), maxLines: 1),
                            AutoSizeText(
                              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 19),
                              maxLines: 7,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(
                                height: 300,
                                child: Image.asset('images/error.png')),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Headers extends StatelessWidget {
  const Headers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 9),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)), 
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Foodie',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
                const Spacer(),
                Navbarheaders(
                  text: 'Menu',
                  press: () {},
                ),
                Navbarheaders(
                  text: 'Riders',
                  press: () {},
                ),
                Navbarheaders(
                  text: 'Borger',
                  press: () {},
                ),
                Navbarheaders(
                  text: 'Settings',
                  press: () {},
                ),
                const Spacer(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          focusedBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          enabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                const CircleAvatar(
                  backgroundColor: kSecondaryColor,
                  backgroundImage: AssetImage('images/pfp.jpg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Navbarheaders extends StatelessWidget {
  const Navbarheaders({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: press,
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
       const  SizedBox(
          width: kPadding,
        ),
      ],
    );
  }
}
