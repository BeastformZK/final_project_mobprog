import 'package:flutter/material.dart';
import '../../Models/models_game.dart';

class LibraryDetailsPage extends StatelessWidget {
  const LibraryDetailsPage({Key? key, required this.games}) : super(key: key);
  final GameModel games;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(games.title, style: const TextStyle(fontSize: 15)),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, size: 10),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 18,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(10))),
                  child: Image.network(
                    games.imageUrl,
                    width: 400,
                    height: 400,
                  )),
            ),
            Expanded(
              child: Card(
                elevation: 15,
                color: Colors.white54,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          "Release Year: ${games.year.toString()}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 17),
                        )),
                        Center(
                            child: Text(
                          games.genre,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 12, fontStyle: FontStyle.italic),
                        )),
                        const SizedBox(height: 10),
                        Center(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  games.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
