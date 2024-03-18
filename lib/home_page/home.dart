import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:homework_ai/chat_page/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Container(
                  child: const Image(
                    image: AssetImage('assets/Welcome.gif'),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Choose A Subject',
                  style: GoogleFonts.bungeeSpice(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                    child: GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChatPage(title: 'Mathematics'),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 50,
                                    width: 60,
                                    child: Image(
                                      image: AssetImage('assets/math.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Mathematics',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChatPage(title: 'Science'),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image(
                                      image: AssetImage('assets/sci.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Science',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChatPage(title: 'English'),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image(
                                      image: AssetImage('assets/eng.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'English',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChatPage(title: 'Social Science'),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image(
                                      image: AssetImage('assets/ss.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Social \nScience',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChatPage(title: 'General'),
                              ),
                            );
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image(
                                      image: AssetImage('assets/any.png'),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Anything \nGeneral',
                                    style: GoogleFonts.montserrat(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => scaffoldKey.currentState!.openDrawer(),
            ),
          ),
        ],
      ),
    );
  }
}
