import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';
import '../home_pages/settings_userprofile_page.dart';

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
          // note: remove const if applying data
          children: const [
            CircleAvatar(
              radius: 52,
              child: Image(image: AssetImage('assets/background_logo.png')),
            ),
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
