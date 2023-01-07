import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var user = FirebaseAuth.instance.currentUser!;

  void logOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: logOut, icon: const Icon(Icons.logout))
        ],
        title: const Text(
          'Homepage',
          style: TextStyle(color: Colors.greenAccent),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.black87),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Logged In ${user.email!}',
              style: const TextStyle(fontSize: 30, color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
