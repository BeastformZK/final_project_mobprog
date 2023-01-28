import 'package:final_project_mobprog/Screens/library_pages/library_page.dart';
import 'package:flutter/material.dart';
import '../navigation_drawer_pages/navigation_drawer_page.dart';
import '../post_pages/forms_posts.dart';
import '../post_pages/post_screen_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],

      /// remove const if the data is already inserted on NavigationDrawerPage
      drawer: const NavigationDrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        elevation: 0,
        title: const Text('Game Blog',
            style: TextStyle(color: Colors.greenAccent)),
      ),
      body: currentIndex == 0 ? const PostScreen() : const LibraryPage(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[700],
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PostForm(
                    title: 'New Game post',
                  )));
        },
        child: const Icon(Icons.gamepad_sharp),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Game Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), label: 'Game Library')
            ],
            currentIndex: currentIndex,
            onTap: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            backgroundColor: Colors.green[700],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white),
      ),
    );
  }
}
