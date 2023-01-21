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
      title: 'Dota 2',
      description: 'A Multiplayer online battle arena (MOBA).'
          'The Objective to destroy the enemy ancient.'
          ' Played between 10 players 5 on each side. ',
      imageUrl:
          "https://i.pinimg.com/originals/43/d6/23/43d6232111a48d694d60b752f81d1ad8.jpg",
      year: 2013,
      genre: 'MOBA',
      ratings: '8/10 Steam | 9.4/10 IGN '),
  GameModel(
      title: 'League of Legends',
      description: 'A Multiplayer online battle arena (MOBA).'
          'The Objective to destroy the enemy ancient.'
          ' Played between 10 players 5 on each side. ',
      imageUrl: "https://wallpaperaccess.com/full/2379005.jpg",
      year: 2009,
      genre: 'MOBA',
      ratings: '78% Metacritic | 9.2/10 IGN. '),
  GameModel(
      title: 'Starcraft II',
      description: 'is a real-time strategy game'
          'similar to warcraft made by Blizzard Entertainment.'
          ' Played with powerful races aim to destroy each other until no building left. ',
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
  GameModel(
      title: 'Red Dead Redemption',
      description:
          'Red Dead Redemption is a 2010 western-themed, action-adventure video game developed by Rockstar San Diego and Rockstar North and published by Rockstar Games. '
          'It is the second game of the Red Dead series and was released for the PlayStation 3 and Xbox 360 on May 18, 2010, '
          'in North America, and three days later on May 21, 2010, in Europe.',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BODQ1YzU4MmMtYmE0YS00NTRjLWE4YWMtZWNiNzM4M2ZkMzcxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg",
      year: 2010,
      genre: 'Third-person shooter, action-adventure, western',
      ratings: ' Metacritic: 95% | 9.7/10 IGN. '),
  GameModel(
      title: 'Grand Theft Auto: San Andreas',
      description:
          'Grand Theft Auto: San Andreas is a Rockstar North-developed video game released on 26th October 2004 by Rockstar Games, and is the seventh title in the Grand Theft Auto series and the third game in the 3D Universe of the series. '
          'It is the sequel to Grand Theft Auto: Vice City and the prequel to Grand Theft Auto: Liberty City Stories and Grand Theft Auto III.'
          'It was released on the same date as Grand Theft Auto Advance. GTA San Andreas is set in the fictional state of San Andreas.',
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMTAyYWYyOTMtNmUzNS00NzNjLTkyZTUtZjhlZjMzYzJmNzM5XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg",
      year: 2005,
      genre: 'Action, Open world, Gambling/casino',
      ratings: ' Metacritic: 93% | 9.6/10 IGN. '),
  GameModel(
      title: 'Stardew Valley',
      description:
          'Stardew Valley was first released on Windows in February 2016 and has seen many ports and updates since then. '
          'The player controls a custom character who takes over their grandfathers farm in Stardew Valley, at which point the player can choose their own path. From expanding the farm and raising livestock to improving their skills and finding love and friendship, '
          'from fishing and exploring caves to decorating and renovating their house, Stardew Valley allows players to live out their own life in the peaceful farm lifestyle!',
      imageUrl: "https://images4.alphacoders.com/782/thumb-1920-782781.png",
      year: 2016,
      genre: 'Indie game, Role-playing video game, Adventure game',
      ratings: ' Metacritic: 89% | 9.5/10 IGN. '),
  GameModel(
      title: 'Elden Ring',
      description:
          'Elden Ring is a dark fantasy RPG that lets you play one of the descendants of the Tarnished. '
          'An outcast, you must enter the Lands Between to try to gain re-admittance to the society there as an Elden Lord. '
          'To do that, you must reveal the mystery of the fabled Elden Ring. Your adventures in the Lands Between will teem with threats and brim with unknown.',
      imageUrl:
          "https://static.wikia.nocookie.net/eldenring/images/d/d6/MP-Key-Art.jpg/revision/latest?cb=20220223180331",
      year: 2022,
      genre:
          'Adventure game, Action role-playing game, Fighting game, Platform game',
      ratings: ' Metacritic: 96% | 10/10 IGN. '),
  GameModel(
      title: 'Stray',
      description:
          'Stray is a third-person cat adventure game set amidst the detailed, '
          'neon-lit alleys of a decaying cybercity and the murky environments of its seedy underbelly. '
          'Roam surroundings high and low, defend against unforeseen threats and solve the mysteries of this unwelcoming place inhabited by curious droids and dangerous creatures.',
      imageUrl:
          "https://static.wikia.nocookie.net/stray/images/0/07/Stray.png/revision/latest?cb=20220310061247",
      year: 2022,
      genre: 'Adventure game, Indie game, Puzzle, Simulation video game',
      ratings: ' Metacritic: 83% | 8/10 IGN. '),
  GameModel(
      title: 'HALF LIFE 2',
      description:
          'Opens the door to a world where the players presence affects everything around him, '
          'from the physical environment to the behaviors -- even the emotions -- of both friends and enemies. '
          'The player again picks up the crowbar of research scientist Gordon Freeman, who finds himself '
          'on an alien-infested Earth being picked to the bone, its resources depleted, its populace dwindling. '
          'Freeman is thrust into the unenviable role of rescuing the world from the wrong he unleashed back at Black Mesa. And a lot of people -- people he cares about -- are counting on him. ',
      imageUrl:
          "https://s2.gaming-cdn.com/images/products/2284/orig/half-life-2-pc-mac-game-steam-cover.jpg?v=1650555068",
      year: 2004,
      genre: 'Action, Shooter, Shooter, First-Person, Sci-Fi, Sci-Fi, Arcade',
      ratings: ' Metacritic: 91% | 9.2/10 IGN. '),
  GameModel(
      title: 'DISCO ELYSIUM: THE FINAL CUT',
      description:
          'Pursue your political dreams in new quests, meet and question more of the citys locals, and explore a whole extra area. '
          'Full voice-acting, controller support, and expanded language options also included. Get even more out of this award-winning open world. '
          'You are a detective with a unique skill system at your disposal and a whole city block to carve your path across. Interrogate unforgettable characters, crack murders, or take bribes. '
          'Become a hero or an absolute disaster of a human being.',
      imageUrl:
          "https://cdn.akamai.steamstatic.com/steam/apps/632470/header.jpg?t=1667483149",
      year: 2021,
      genre: 'Role-Playing, General, Western-Style',
      ratings: ' Metacritic: 83% | 8.3/10 IGN. '),
  GameModel(
      title: 'GRAND THEFT AUTO V',
      description:
          'Los Santos: a sprawling sun-soaked metropolis full of self-help gurus, starlets and fading celebrities, once the envy of the Western world, '
          'now struggling to stay alive in a time of economic uncertainty and cheap reality TV. Amidst the turmoil, three very unique criminals plot their own chances of survival and success: '
          'Franklin, a street hustler looking for tangible opportunities and serious money; Michael, a professional ex-con whose retirement is less rosy than he figured it would be; '
          'and Trevor, a violent dude driven by the opportunity for a cheap high and his next big score. With options at a premium, the crew risks it all in a myriad of daring and dangerous heists that could set them up for life.',
      imageUrl:
          "https://cdn.cloudflare.steamstatic.com/steam/apps/271590/header.jpg?t=1671485100",
      year: 2015,
      genre: 'Modern, Action Adventure, Open-World',
      ratings: ' Metacritic: 79% | 7.8/10 IGN. '),
  GameModel(
      title: 'Call of Duty: Warzone 2.0',
      description:
          'A first-person shooter, set in the Call of Duty universe, in which players engage in multiplayer battle royale- '
          'and plunder-style skirmishes. Players assume the roles of soldiers/freedom fighters battling to be the last man standing or to earn the most '
          'money via scavenging and performing objectives. Players use machine guns, shotguns, sniper rifles, and explosives to kill enemies in frenetic '
          'combat. Battles are accompanied by realistic gunfire, screams of pain, and blood-splatter effects.',
      imageUrl:
          "https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/blog/hero/mw-wz/WZ2-S01-DMZ-TACTICS-TOUT.jpg",
      year: 2022,
      genre: 'First-Person Shooter',
      ratings: ' Metacritic: 80% | 8/10 IGN. '),
  GameModel(
      title: 'Granny',
      description:
      'Granny keeps you locked in her house.'
          'Now you have to try to get out of her house, but be careful and quiet. She hears everything.'
          'If you drop something on the floor, she hears it and comes running.'
          'You can hide in wardrobes or under beds. You have 5 days.',
      imageUrl:
      "https://wallpaperaccess.com/full/7257003.jpg",
      year: 2017,
      genre: 'Survival Horror, Puzzle',
      ratings: ' Metacritic: 80% | 4.3 stars IGN. '),
];
