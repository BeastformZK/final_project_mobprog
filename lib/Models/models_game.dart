class GameModel {
  String title;
  String description;
  String imageUrl;
  String genre;
  String ratings;
  int year;

  GameModel(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.year,
      required this.genre,
      required this.ratings});
}

/// Sample Games

List<GameModel> gameList = [
  GameModel(
      title: 'Pokemon Scarlet/Violet',
      description:
          'Pokémon Scarlet and Pokémon Violet are the first open-world RPGs in the Pokémon series.'
          ' As you enjoy the hallmarks of the series—meeting, teaming up with, battling, training, and trading Pokémon—you '
          'will be able to immerse yourself in a newly evolved adventure.',
      imageUrl: "https://scarletviolet.pokemon.com/images/meta/en/share-tw.jpg",
      year: 2022,
      genre: 'Action/Adventure/Fantasy',
      ratings: '72% Metacritic | 6/10 IGN'),
  GameModel(
      title: 'The Witcher 3: Wild Hunt - Complete Edition',
      description:
          'The Witcher 3: Wild Hunt is an action role-playing game with a third-person perspective. '
          'Players control Geralt of Rivia, a monster slayer known as a Witcher. '
          'Geralt walks, runs, rolls and dodges, and (for the first time in the series) jumps, climbs and swims.',
      imageUrl:
          "https://images-eds-ssl.xboxlive.com/image?url=8Oaj9Ryq1G1_p3lLnXlsaZgGzAie6Mnu24_PawYuDYIoH77pJ.X5Z.MqQPibUVTcABnWoSz5cKDfNxiR2TvU8rOmfTWX7LO5wphkhLi6f9xwafbP8GgNEkaA1cO3BSe8D0FRqnv_x7.J.kjVp8K9zrvmWTruaWtaCZ4smg.i4IrOioGInks4kbw16C9VV3RdZE5NDRHFlX8r9DvFJjoCtSlmr6V4mmQ5FDe7m7NJTbU-",
      year: 2022,
      genre: 'Action/Adventure/Fighting',
      ratings: '94% Metacritic | 8/10 IGN'),
  GameModel(
      title: 'Cyberpunk 2077',
      description: 'Cyberpunk 2077 is an open-world, '
          'action-adventure story set in Night City, a megalopolis obsessed with power, glamour and body modification. '
          'You play as V, a mercenary outlaw going after a one-of-a-kind implant that is the key to immortality.',
      imageUrl:
          "https://images.wallpapersden.com/image/download/cyberpunk-2077-game_a2prZmqUmZqaraWkpJRmZW1lrWZlbWU.jpg",
      year: 2020,
      genre: 'Sci-Fi/Action/Fighting',
      ratings: '86% Metacritic | 9/10 IGN'),
  GameModel(
      title: 'Stray',
      description:
          'Stray is a third-person cat adventure game set amidst the detailed, '
          'neon-lit alleys of a decaying cybercity and the murky environments of its seedy underbelly.',
      imageUrl:
          "https://images.wallpapersden.com/image/download/new-stray-gaming-poster_bWplaGuUmZqaraWkpJRmZW1lrWZlbWU.jpg",
      year: 2022,
      genre: 'Sci-Fi/Adventure',
      ratings: '83% Metacritic | 8/10 IGN'),
  GameModel(
      title: 'Pokemon Legends: Arceus',
      description:
          'Arceus is a white equine Pokémon resembling a qilin or centaur with a gray, vertically-striated underside. '
          'The striated pattern has similar recurrences on the underside of its mane, tail, and face. '
          'Its four pointed feet are tipped with gold hooves.',
      imageUrl:
          "https://assets-prd.ignimgs.com/2021/11/04/pokmon-legends-arceus-button-fomn-1636006738698.jpg",
      year: 2022,
      genre: 'Action/Adventure/Fantasy',
      ratings: '83% Metacritic | 7/10 IGN'),
  GameModel(
      title: 'Elden Ring',
      description:
          'Elden Ring is an action role-playing game played in a third person perspective, with gameplay focusing on combat and exploration. '
          'It features elements similar to those found in other games developed by FromSoftware, '
          'such as the Dark Souls series, Bloodborne, and Sekiro: Shadows Die Twice.',
      imageUrl: "https://images4.alphacoders.com/115/thumb-1920-1151249.jpg",
      year: 2022,
      genre: 'Action/Adventure/Fighting',
      ratings: '94% Metacritic | 10/10 IGN'),
  GameModel(
      title: 'Bloodborne',
      description:
          'Bloodborne follows the players character, a Hunter, through the decrepit Gothic, '
          'Victorian-era–inspired city of Yharnam, whose inhabitants are afflicted with a blood-borne '
          'disease which transforms the residents, called Yharnamites, into horrific beasts.',
      imageUrl: "https://pbs.twimg.com/media/ET5RIPQWoAIzzd2.jpg",
      year: 2022,
      genre: 'Action/Adventure/Fighting',
      ratings: '92% Metacritic | 9.1/10 IGN'),
  GameModel(
      title: 'God of War Ragnarök',
      description:
          'Ragnarök, also known as the Twilight of the Gods, is a major event first prophesied by the Jötunn Gróa that foresees the ultimate battle that results in the death of many gods, '
          'including Odin and Thor, as well as the "rebirth" of the world through submersion into water.',
      imageUrl:
          "https://cdna.artstation.com/p/assets/covers/images/055/097/300/large/gabriel-vitoria-gabriel-vitoria-artstation-cover.jpg?1666110975",
      year: 2022,
      genre: 'Action/Adventure/Fighting',
      ratings: '94% Metacritic | 10/10 IGN'),
  GameModel(
      title: 'Dead by Daylight',
      description:
          'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, '
          'and the other four players play as Survivors, trying to escape the Killer and avoid being caught, tortured and killed. '
          'Survivors play in third-person and have the advantage of better situational awareness.',
      imageUrl:
          "https://images.wallpapersden.com/image/download/dead-by-daylight-hd-gaming-2022_bWhua26UmZqaraWkpJRmZW1lrWZlbWU.jpg",
      year: 2016,
      genre: 'Action/Horror',
      ratings: '9/10 Steam | 9/10 IGN'),
  GameModel(
      title: 'Diablo Immortal',
      description:
          'Diablo Immortal is a free-to-play, massively multiplayer online action role-playing video game developed by Blizzard Entertainment and NetEase. '
          'An installment in the Diablo series, it is set between the events of Diablo II and Diablo III. Players control a character of their chosen '
          'class – Barbarian, Wizard, Monk, Necromancer, Demon Hunter, or Crusader – who must locate and destroy hidden shards of the Worldstone, '
          'to prevent Skarn, the Lord of Damnation, from destroying the world of Sanctuary.',
      imageUrl:
          "https://images.wallpapersden.com/image/download/4k-diablo-immortal_bGpuZ2qUmZqaraWkpJRmZW1lrWZlbWU.jpg",
      year: 2022,
      genre: 'MMO-RPG/Action/Role-Playing',
      ratings: '59% Metacritic | 6/10 IGN'),
  GameModel(
      title: 'The Last of Us Part I',
      description:
          'The Last of Us Part I is a 2022 action-adventure game developed by Naughty Dog and published by Sony Interactive Entertainment. '
          'A remake of the 2013 game The Last of Us, it features revised gameplay, including enhanced combat and exploration, '
          'and expanded accessibility options.',
      imageUrl:
          "https://www.eggplante.com/wp-content/uploads/2022/06/8C131456-5FB2-44E6-8E25-990635434B5D.webp",
      year: 2022,
      genre: 'Action/Adventure/Horror',
      ratings: '88% Metacritic | 9/10 IGN'),
  GameModel(
      title: 'Tom Clancys Rainbow Six Siege',
      description:
          'Rainbow Six Siege is a high-precision, tactical shooter that prioritises careful planning teamwork and finely tuned tactical play. '
          'Since its release in 2015, the game has radically expanded, adding extra maps, new operators, weapons, and themed seasonal events.',
      imageUrl:
          "http://static2.cdn.ubi.com/pxm/RainbowSix/Shop_Theme_Q_1080.png",
      year: 2017,
      genre: 'Action/Shooting',
      ratings: '9/10 Steam | 8.5/10 IGN'),
  GameModel(
      title: 'Dying Light',
      description:
          'Dying Light is a 2015 survival horror video game developed by Techland and published by Warner Bros. '
          'Interactive Entertainment. '
          'The game story follows an undercover agent named Kyle Crane who is sent to infiltrate a quarantine zone in a Middle-eastern city called Harran.',
      imageUrl: "https://cdn.wallpapersafari.com/12/45/IlEw8h.jpeg",
      year: 2015,
      genre: 'Action/Shooting/Horror',
      ratings: '10/10 Steam | 8.5/10 IGN'),
  GameModel(
      title: 'Dying Light 2 Stay Human',
      description:
          'Dying Light 2 Stay Human is a 2022 action role-playing game developed and published by Techland. '
          'The sequel to Dying Light, the game was released on '
          'February 4, 2022 for PlayStation 4, PlayStation 5, Windows, Xbox One, and Xbox Series X/S. A Nintendo Switch version for the cloud is in development.',
      imageUrl:
          "https://image.api.playstation.com/vulcan/img/rnd/202106/2908/7aJhOMuJALdBPqZHVy3CgJsg.png",
      year: 2022,
      genre: 'Action/Shooting/Horror',
      ratings: '7/10 Steam | 7/10 IGN'),
  GameModel(
      title: 'DotA 2',
      description: 'A Multiplayer online battle arena (MOBA).'
          'The Objective to destroy the enemy ancient.'
          'Played between 10 players 5 on each side. ',
      imageUrl:
          "https://i.pinimg.com/originals/43/d6/23/43d6232111a48d694d60b752f81d1ad8.jpg",
      year: 2013,
      genre: 'MOBA',
      ratings: '8/10 Steam | 9.4/10 IGN '),
  GameModel(
      title: 'League of Legends',
      description: 'A Multiplayer online battle arena (MOBA).'
          'The Objective to destroy the enemy ancient.'
          'Played between 10 players 5 on each side. ',
      imageUrl: "https://wallpaperaccess.com/full/2379005.jpg",
      year: 2009,
      genre: 'MOBA',
      ratings: '78% Metacritic | 9.2/10 IGN. '),
  GameModel(
      title: 'Starcraft II',
      description: 'is a real-time strategy game'
          'similar to warcraft made by Blizzard Entertainment.'
          'played with powerful races aim to destroy each other until no building left. ',
      imageUrl:
          "https://www.pngitem.com/pimgs/m/277-2774593_transparent-starcraft-logo-png-starcraft-2-logo-png.png",
      year: 2010,
      genre: 'Real-time Strategy game',
      ratings: '86% Metacritic | 9/10 IGN. '),
  GameModel(
      title: 'Rocket League',
      description: 'Vehicular soccer video game'
          'Published by Psyonix.'
          'First released in Playstation 4 console games. ',
      imageUrl:
          "https://i.pinimg.com/originals/91/bb/7e/91bb7eec0d6a6f5dfa1d1cbb00e9f2a6.jpg",
      year: 2015,
      genre: 'Action Vehicular Sports Game',
      ratings: '86% Metacritic | 9.3/10 IGN. '),
  GameModel(
      title: 'Overwatch',
      description:
          'A first person shooting game that creates a new feel to the player'
          'First released in playstation consoles.'
          'Created by Blizzard Entertainment ',
      imageUrl: "https://wallpaperaccess.com/full/2696059.jpg",
      year: 2016,
      genre: 'First person shooter, Fighting game',
      ratings: '79% Metacritic | 10/10 IGN. '),
  GameModel(
      title: 'Fortnite',
      description:
          ' a survival game where 100 players fight against each other in player versus player combat to be the last one standing'
          'A third person shooting game'
          'fast paced shooter game with the applying building strats',
      imageUrl: "https://wallpaper.dog/large/641815.jpg",
      year: 2017,
      genre: 'third person shooter, survival game',
      ratings: '83% Metacritic | 9.6/10 IGN. '),
];
