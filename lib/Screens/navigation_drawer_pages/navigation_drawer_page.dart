import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';
import '../home_pages/settings_userprofile_page.dart';
import '../library_pages/library_page.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({Key? key}) : super(key: key);

  /// PERMISSION FUNCTIONS
  void openPermissionSettings() async {
    openAppSettings();
  }

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.teal,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          /// remove const if applying data
          children: const [
            CircleAvatar(
              radius: 52,

              /// insert background image, and change the 'Network Image' to 'Image chu chu'
              backgroundImage: NetworkImage(
                  "https://yt3.ggpht.com/ytc/AMLnZu_OGABXJQKwb7LWeP-ZerUdG0W-rkOvJlhGZ94-2g=s900-c-k-c0x00ffffff-no-rj"),
            ),
            SizedBox(height: 12),
            Text('Account Name', style: TextStyle(color: Colors.white)),
            Text('Account Email', style: TextStyle(color: Colors.white)),
            SizedBox(height: 12)
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.account_circle_rounded),
              title: const Text('Game Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Library'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LibraryPage()));
              },
            ),
            const Divider(color: Colors.black54),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('App Permission'),
              onTap: () {
                openPermissionSettings();
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log-out'),
              onTap: () {
                logout().then((value) => {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const LoginWidget()),
                          (route) => false)
                    });
              },
            ),
          ],
        ),
      );
}
