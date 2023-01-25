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
  GameModel(
      title: 'Clash of Clans',
      description:
             'a MMO or massively multiplayer online strategy game developed by Supercel.'
             'The number on game charts during its prime on mobile gaming',
      imageUrl:
             "https://1.bp.blogspot.com/-lR35K75axWU/XxtYDf7I2FI/AAAAAAAAACc/4DjS0bL5zJA24LKFgsX94fJ80ojx-CMBgCLcBGAsYHQ/s1024/app-icons-clashofclans.png",
      year: 2012,
      genre: 'MMO',
      ratings: ' Metacritic: 74% |  93% IGN. '),
  GameModel(
      title: 'Rise Of Kingdoms',
      description:
             'Game created by Lilith Games'
             'An MMO game that focuses on faction raging from egypt,roman to the vikings,etc'
             'Create and expand your army with maximizing troop level up and their technology'
             'Join Alliances and conquer your servers and the global server',
      imageUrl:
              "https://cdn.gamerjournalist.com/primary/2021/07/Rise-of-Kingdoms-codes.jpg",
      year: 2018,
      genre: 'MMO',
      ratings: ' Metacritic: 73% | 80% IGN '),
  GameModel(
      title: 'Mario Kart Tour',
      description:
            'Based on the survival action based mario games and frachise'
            'Mario Kart to ios and android application for mobile users'
            'Race against other players online with different selection of Mario character franchise'
            'costumizable carts raging from bikes,kart to sapceships',
      imageUrl:
            "https://assets1.ignimgs.com/2019/08/27/mario-kart-tour---button-fin-1566929428701.jpg",
      year: 2019,
      genre: 'Racing game',
      ratings: ' Metacritic: 51% | 83% IGN '),
  GameModel(
      title: 'Genshin Impact',
      description:
             'an open-world action RPG. In the game, set forth on a journey across a fantasy world called Teyvat. In this vast world.'
             'Separated by an unknown god, stripped of your powers, and cast into a deep slumber, you now awake to a world very different from when you first arrived.'
             'Thus begins your journey across Teyvat to seek answers from The Seven — the gods of each element'
             'join in coop raids and bosses with a gacha character and weapon system',
      imageUrl:
              "https://playpc.io/wp-content/uploads/2020/11/genshin-impact-logo.png",
      year: 2020,
      genre: 'open world RPG',
      ratings: ' Metacritic: 86% | 7.5/10 IGN. '),
  GameModel(
      title: 'Call of Duty Mobile',
      description:
            'A two modes Call of Duty game for mobile users.'
            'Raging from clasic 5v5 Fps shooter game to a costumizable third and first shooter survival battlegrounds.'
            'With free gun and character skins with draw purchases option.'
            'Brings you the classic feels from CoD to your mobile.',
      imageUrl:
            "https://cdn1.dotesports.com/wp-content/uploads/2020/05/24064824/call-of-duty-mobile-hero-a.jpg",
      year: 2019,
      genre: 'Shooter game',
      ratings: ' Metacritic: 81% | 6.5/10 IGN. '),
  GameModel(
      title: 'Battle Realms',
      description:
             'Kenji, exiled heir to the Dragon throne, must stake his claim in a chaotic world wracked by the intrigues of the Serpent, Wolf and Lotus clans.'
             'Battle Realms is a fantasy real-time strategy innovation inspired by kung-fu movies and Japanese mythology.'
             'Made by liquid entertainment.'
             'Develop a village of peasants into a clan of highly specialized fantasy warriors, leading your clan through two possible scenarios - one heroic and one evil.',
      imageUrl:
             "https://i.ytimg.com/vi/xm6N2ZcN4L0/maxresdefault.jpg",
      year: 2001,
      genre: 'real-time fantasy strategy game',
      ratings: ' Metacritic: 82% | 8.7/10 IGN.'),
  GameModel(
      title: 'Pokemon Go',
      description:
             'an augmented Reality game Of pokemon'
             'An open world that realtime uses gps to where the pokemon in the real world are hidden'
             'Catch them all using the camera or default ui'
             'Pokemons available from gen 1 to Gen 6 up till this day',
      imageUrl:
            "https://lifestylefrisco.com/wp-content/uploads/2016/08/pokemon-go-logo.jpg",
      year: 2016,
      genre: 'Augmented reality game',
      ratings: ' Metacritic: 69% | 7.2/10 IGN. '),
  GameModel(
      title: 'Unreal tournament Remastered',
      description:
              'Ga first-person arena shooter video game developed by Epic Games and Digital Extremes.'
              'The second installment in the Unreal series, it was first published by GT Interactive in 1999 for Microsoft Windows.'
              'Players compete in a series of matches of various types, with the general aim of out-killing opponents.'
              'Unreal Tournament received universal acclaim, often being considered one of the greatest video games ever made.',
      imageUrl:
              "https://www.mobygames.com/images/promo/original/1479311297-3200352547.png",
      year: 2004,
      genre: 'First person shooter',
      ratings: ' Metacritic: 93% | 7/10 IGN. '),
  GameModel(
      title: 'Warcraft 3: Reign of Chaos',
      description:
        'a high fantasy real-time strategy computer video game developed and published by Blizzard Entertainment.'
        'It is the second sequel to Warcraft: Orcs & Humans, after Warcraft II: Tides of Darkness, the third game set in the Warcraft fictional universe.'
        'is set several years after the events of Warcraft II, and tells the story of the Burning Legions attempt to conquer the fictional world of Azeroth.'
        'players collect resources, train individual units and heroes, and build bases in order to achieve various goals (in single-player mode), or to defeat the enemy player.',
      imageUrl:
        "https://upload.wikimedia.org/wikipedia/fr/8/8a/Warcraft_III_Reign_of_Chaos_Logo.png",
      year: 2003,
      genre: 'Real Time Strategy',
      ratings: ' Metacritic: 92% | 8.8/10 IGN. '),
  GameModel(
      title: 'Minecraft',
      description:
          'is a sandbox game developed by Mojang Studios.'
          'The game was created by Markus "Notch" Persson in the Java programming language.'
          'In Minecraft, players explore a blocky, procedurally generated, three-dimensional world.'
          'virtually infinite terrain and may discover and extract raw materials, craft tools and items, and build structures, earthworks, and machines.',
      imageUrl:
          "https://global-uploads.webflow.com/5e157548d6f7910beea4e2d6/6375694cd6460e46d33240d8_RhC4RIwT-6NDA3RUbiSyLHl8Hl0AoCMqZNy2zpLl9wRYICBaCN_xX_wtPy81AA4KwCPuPd3YhSlKEqxqtNZH-Gjx2TWX_4lIuhtC5mk7B-uwX2cAFraek3-ILYAyAy685S7Ieb37HhHpzTFRMK4aKHn7hduf3POBOGj4KmVz0dQRlFy6fiNpZzEMgxo-qA.jpeg",
      year: 2009,
      genre: 'Sand box game',
      ratings: ' Metacritic: 93% | 9/10 IGN. '),
  GameModel(
      title: 'Roblox',
      description:
          'is an online game platform and game creation system developed by Roblox Corporation.'
          'allows users to program games and play games created by other users.'
          'Roblox is free to play, with in-game purchases available through a virtual currency called Robux.',
      imageUrl:
          "https://gamingonphone.com/wp-content/uploads/2022/08/roblox-new-logo.jpg",
      year: 2006,
      genre: 'Sand box game',
      ratings: ' Metacritic: 48% | 7.9/10 IGN. '),
  GameModel(
      title: 'Mobile Legends: Bang Bang',
      description:
            'game developed and published by Moonton, a subsidiary of ByteDance.'
            'Released in 2016, the game grew in popularity worldwide, most prominently in Southeast Asia.'
            ' the game pits 2 teams of 5 against each other in real time with at least 10-second matchmaking and 10-minute matches.'
            'Featuring traditional battle arena gameplay, players must fight over three lanes to take the enemys tower and defend their own.',
      imageUrl:
            "https://i0.wp.com/gamingonphone.com/wp-content/uploads/2020/09/mlbb.jpg",
      year: 2016,
      genre: 'MOBA',
      ratings: ' Metacritic: 6.4 stars | 4.0 stars Playstore. '),
  GameModel(
      title: 'Candy Crush',
      description:
          'Candy Crush Saga is a free-to-play tile-matching video game.'
          'originally for Facebook; other versions for iOS, Android, Windows Phone, and Windows 10 followed.'
          'players complete levels by swapping colored pieces of candy on a game board to make a match of three or more of the same color.'
          'eliminating those candies from the board and replacing them with new ones.',
      imageUrl:
          "https://i.pinimg.com/originals/5b/27/71/5b27712520468fc37329a7fd84c2a31d.png",
      year: 2012,
      genre: 'Tile matching,Puzzle game',
      ratings: ' Metacritic: 79% | 46% IGN. '),
  GameModel(
      title: 'Temple Run',
      description:
            'a 3D endless running video game developed and published by Imangi Studios.'
            'The player controls an explorer who has obtained an ancient relic and runs from demonic monkey-like creatures chasing him.'
            'Run from angry Monsters that you stole a treasure from.'
            'collect coins and gems to unlock character.',
      imageUrl:
            "https://is4-ssl.mzstatic.com/image/thumb/Purple124/v4/35/56/a1/3556a145-a20b-123f-12a8-cf4c9908c7bd/source/0x0ss-85.png",
      year: 2011,
      genre: 'Running game',
      ratings: ' Metacritic: 80% | 7.5/10 IGN. '),
  GameModel(
      title: 'Subway Surfer',
      description:
            'is an endless runner mobile game co-developed by Kiloo and SYBO Games.'
            'available on Android, iOS, HarmonyOS, Kindle, and Windows Phone platforms and uses the Unity game engine.'
            'TThe game starts by tapping the touchscreen, while Jake (the games starter character) or any other character sprays graffiti on a subway.'
            'A crash results in a game over, but the player can continue running by using keys, or watching an ad.',
      imageUrl:
            "https://1.bp.blogspot.com/-wLOZwfvy_eg/UXi5EB1IqJI/AAAAAAAAEvg/zr4QAXaLIls/s1600/1234567.jpg",
      year: 2012,
      genre: 'Endless Running game',
      ratings: ' Metacritic: 71% | 4.7 stars Playstore. '),
  GameModel(
      title: 'World of Tanks',
      description:
          'is a massively multiplayer online game developed by Belarusian company Wargaming.'
          'featuring 20th century (1910s–1970s) era combat vehicles.'
          'participants also have the option of paying a fee for use of "premium" features.',
      imageUrl:
          "https://i.ytimg.com/vi/6kodGpDicjw/hqdefault.jpg",
      year: 2011,
      genre: 'Multiplayer Online Game, Free-to-Play, Team Based',
      ratings: ' Metacritic: 80% | 7.5/10 IGN. '),
  GameModel(
      title: 'Counter-Strike: Global Offensive',
      description:
          'is a 2012 multiplayer tactical first-person shooter developed by Valve and Hidden Path Entertainment.'
          'It is the fourth game in the Counter-Strike series. Developed for over two years.'
          'game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes.'
          'most common game modes involve the Terrorists planting a bomb while Counter-Terrorists attempt to stop them, or Counter-Terrorists attempting to rescue hostages that the Terrorists have captured.',
      imageUrl:
          "https://1000marcas.net/wp-content/uploads/2020/03/Logo-CSGO.png",
      year: 2012,
      genre: 'multiplayer tactical first-person shooter',
      ratings: ' Metacritic: 83% | 7.5/10 IGN. '),
  GameModel(
      title: 'Valorant',
      description:
          'a free-to-play first-person tactical hero shooter developed and published by Riot Games, for Windows.'
          'eased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020.'
          'a team-based first-person tactical hero shooter set in the near future, Players play as one of a set of Agents, characters based on several countries and cultures around the world.'
          'Every player starts each round with a "classic" pistol and one or more "signature ability" charges.',
      imageUrl:
          "https://cdn.dribbble.com/users/2348/screenshots/10696082/valorant_1_4x.png",
      year: 2020,
      genre: 'multiplayer tactical first-person shooter',
      ratings: ' Metacritic: 80% | 7.8/10 IGN. '),
  GameModel(
      title: 'Jetpack Joyride',
      description:
            'game uses a simple, one-touch system to control the jetpack; when the player presses anywhere on the touchscreen.'
            'jetpack fires and Barry rises. When the player lets go, the jetpack turns off, and Barry falls.'
            'objective of the game is to travel as far as possible, collect coins, and avoid hazards such as zappers, missiles and high-intensity laser beams.'
            'Contact with any of such obstacles would result in instant death, although Barrys body will tumble and slide for an additional distance upon dying.',
      imageUrl:
            "https://i.ytimg.com/vi/7_EprEP_-4w/maxresdefault.jpg",
      year: 2011,
      genre: 'side-scrolling endless runner action video game',
      ratings: ' Metacritic: 90% | 9/10 IGN. '),
  GameModel(
      title: 'Zombie Tsunami',
      description:
            'a side scrolling endless runner game..'
            'developed by French studio Mobigame and released for Android and iOS.'
            'It was renamed to Zombie Tsunami on August 11, 2012, to avoid a trademark conflict with Taitos Zombie Carnival mobile game.',
      imageUrl:
            "https://th.bing.com/th/id/R.a22f2b5791c79e17d0d04aac5d9f6aa9?rik=Zq8M212EZTtrkA&riu=http%3a%2f%2fs2.glbimg.com%2fT5oPvSXxmHuKBCLsfYraabNspQY%3d%2f850x446%2fs.glbimg.com%2fpo%2ftt2%2ff%2foriginal%2f201https://gameshunters.com/wp-content/uploads/2015/08/download-Zombie-Tsunami-pc.jpg",
      year: 2012,
      genre: 'a side scrolling endless runner game.',
      ratings: ' Metacritic: 87% | 4.4 Stars Playstore. '),
  GameModel(
      title: 'Clash Royale',
      description:
          'a free-to-play real-time strategy video game developed and published by Supercell.'
          'The game combines elements from collectible card games, tower defense, and multiplayer online battle arena.'
          'is a tower rush video game which puts players in games featuring two or four players (1v1 or 2v2) in which the objective is to destroy more towers than their opponent.'
          'Destruction of the opponents Kings Tower results in an instantaneous win as an automatic three-crown victory.',
      imageUrl:
          "https://i.ytimg.com/vi/ulVgKbRZ_Nk/hqdefault.jpg",
      year: 2016,
      genre: 'free-to-play real-time strategy video game',
      ratings: ' Metacritic: 86% | 8.3/10 IGN. '),
  GameModel(
      title: 'PLAYERUNKNOWNS BATTLEGROUNDS',
      description:
          'is a battle royale game developed by PUBG Studios and published by Krafton.'
          'a type of large-scale last man standing deathmatch where players fight to remain the last alive.'
          'Each match starts with players parachuting from a plane onto one of the eight maps which have different sizes and terrain.'
          'Players start with no gear beyond customized clothing selections which do not affect gameplay. Once they land, players can search buildings, ghost towns and other sites to find weapons, vehicles, armor, and other equipment.',
      imageUrl:
          "https://pngimg.com/uploads/pubg/pubg_PNG55.png",
      year: 2017,
      genre: 'Battle Royale',
      ratings: ' Metacritic: 86% | 6.5/10 IGN. '),

];
