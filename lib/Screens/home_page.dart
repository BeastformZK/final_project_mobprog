import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              child:
              Text('Welcome',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading:  const Icon(Icons.home),
              title:  const Text('Home'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title:  const Text('Profile'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title:  const Text('Settings'),
              onTap: () {

              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title:  const Text('Logout'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Game Blog', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const[
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 5),
                          blurRadius: 10
                      )
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: NetworkImage('https://www.shutterstock.com/image-vector/infinite-game-pad-logo-icon-260nw-1682151313.jpg'),
                                fit: BoxFit.contain
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Game $index review',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elit velit, non faucibus libero tristique at. Sed euismod elit velit, non faucibus libero tristique at.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '- John Doe',
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.black54
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                  icon: const Icon(Icons.thumb_up_sharp, color: Colors.black87),
                                  onPressed: () {

                                  },
                                ),
                              ),
                            ),
                            const Spacer(flex: 1),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: const Icon(Icons.comment_rounded,
                                      color: Colors.black87),
                                  onPressed: () {
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                  },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}