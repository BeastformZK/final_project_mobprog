import 'package:flutter/material.dart';
import 'package:final_project_mobprog/Models/models_game.dart';
import 'library_details_page.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: gameList.length,
            itemBuilder: (context, index) {
              GameModel game = gameList[index];
              return Card(
                elevation: 5,
                margin: const EdgeInsets.all(5),
                child: Container(
                  decoration:
                      const BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.all(20),
                    title: Text(game.title),
                    subtitle: Text('⭐  ${game.ratings}'),
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2.0),
                          topRight: Radius.circular(2.0)),
                      child: Image.network(game.imageUrl,
                          width: 110, height: 100, fit: BoxFit.fill),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.navigate_next_outlined, size: 20),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LibraryDetailsPage(
                                      games: gameList[index])));
                        });
                      },
                    ),
                  ),
                ),
              );
            }));
  }
}
