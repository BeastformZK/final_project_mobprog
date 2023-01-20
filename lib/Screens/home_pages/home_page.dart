import 'package:flutter/material.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';
import '../post_pages/forms_posts.dart';
import '../post_pages/post_screen_data.dart';
import 'settings_userprofile_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      endDrawer: Drawer(
        child: ListView(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  logout().then((value) => {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginWidget()), //allows the user to move between different pages
                            (route) => false)
                  });
                },
              ), //contains one to three lines of text optionally flanked by icons or other widgets, such as check boxes
            ), //a panel with slightly rounded corners and an elevation shadow
            Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Gamer Profile'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),//contains our gamer profile with icon
            ),// to elevate our icon
          ],
        ), // list of scrollable widgets arranged linearly
      ), //an alternative option for tabs
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Game Blog', style: TextStyle(color: Colors.white)),
      ), //consists the game blog
      body: currentIndex == 0 ? const PostScreen() : const Profile(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PostForm(
                title: 'New Game post',
              ))); //send data to the server
        },
        child: const Icon(Icons.add),
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
            ), //displayed at the bottom of an app for selecting among a small number of views
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Gamer Profile')
          ],
          currentIndex: currentIndex,
          onTap: (val) {
            setState(() {
              currentIndex = val;
            });
          },
        ),//provides quick navigation between the top views of an app
      ),//AppBar located at the bottom area
    ); //a material design layout structure that is the main container for the Home page
  }
}