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
                                builder: (context) => const LoginWidget()),
                            (route) => false)
                      });
                },
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Gamer Profile'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Game Blog', style: TextStyle(color: Colors.white)),
      ),
      body: currentIndex == 0 ? const PostScreen() : const Profile(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PostForm(
                    title: 'New Game post',
                  )));
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
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Gamer Profile')
          ],
          currentIndex: currentIndex,
          onTap: (val) {
            setState(() {
              currentIndex = val;
            });
          },
        ),
      ),
    );
  }
}
