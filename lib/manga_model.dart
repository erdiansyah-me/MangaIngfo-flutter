class Manga{
  String title;
  String coverImage;
  String author;
  double rating;
  String status;
  List<String> category;
  String latestChapter;
  String synopsis;

  Manga({
    required this.title,
    required this.coverImage,
    required this.author,
    required this.rating,
    required this.status,
    required this.category,
    required this.latestChapter,
    required this.synopsis,
  });
}

var mangaList = [
  Manga(
    title: 'Berserk',
    coverImage: 'images/berserk.jpg', 
    author: 'Miura Kentarou', 
    rating: 9.46, 
    status: 'On Going', 
    category: [
      'Action','Adventure','Fantasy','Horror','Gore','Seinen'
    ], 
    latestChapter: 'Chapter 368', 
    synopsis: 'Guts, a former mercenary now known as the "Black Swordsman," is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.'
  ),
  Manga(
    title: 'JoJo\'s Bizarre Adventure Part 7: Steel Ball Run', 
    coverImage: 'images/jojo.jpg',
    author: 'Araki Hirohiko', 
    rating: 9.28, 
    status: 'Completed', 
    category: [
      'Action','Adventure','Fantasy','Supernatural','Historical','Seinen'
    ], 
    latestChapter: 'Chapter 96' , 
    synopsis: 'The youthful Johnny Joestar, a crippled former horse racer, has come to San Diego to watch the start of world\'s greatest race. There he encounters Gyro Zeppeli, a racer with two steel balls at his waist instead of a gun. Johnny witnesses Gyro using one of his steel balls to unleash a fantastical power, compelling a man to fire his gun at himself during a duel. In the midst of the action, Johnny happens to touch the steel ball and feels a power surging through his legs, allowing him to stand up for the first time in two years. Vowing to find the secret of the steel balls, Johnny decides to compete in the race, and so begins his bizarre adventure across America on the Steel Ball Run.'
  ),
  Manga(
    title: 'One Piece',
    coverImage: 'images/wanpis.jpg', 
    author: 'Oda Eiichiro', 
    rating: 9.20, 
    status: 'On Going', 
    category: [
      'Action','Adventure','Fantasy','Comedy','Supernatural','Shounen'
    ], 
    latestChapter: 'Chapter 1058', 
    synopsis: 'Gol D. Roger, a man referred to as the "Pirate King," is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the Pirate King is executed and the Great Age of Pirates begins.\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new Pirate King.'
  ),
  Manga(
    title: 'Vagabond', 
    coverImage: 'images/vagabond.jpg',
    author: 'Inoue Takehiko', 
    rating: 9.19, 
    status: 'Hiatus', 
    category: [
      'Action','Adventure','Historical','Martial Arts','Psychological','Seinen'
    ], 
    latestChapter: 'Chapter 327', 
    synopsis: 'Vagabond is the fictitious retelling of the life of one of Japan\'s most renowned swordsmen, the "Sword Saint" Musashi Miyamoto—his rise from a swordsman with no desire other than to become "Invincible Under the Heavens" to an enlightened warrior who slowly learns of the importance of close friends, self-reflection, and life itself.'
  ),
  Manga(
    title: 'Monster', 
    coverImage: 'images/monster.jpg',
    author: 'Urasawa Naoki', 
    rating: 9.13, 
    status: 'Completed', 
    category: [
      'Drama','Mystery','Psychological','Seinen'
    ], 
    latestChapter: 'Chapter 162', 
    synopsis: ' Tenma is the head of the surgical department and close to becoming the director himself. Although all seems well for him at first, he soon becomes entangled in a chain of gruesome murders that have taken place throughout Germany. The culprit is a monster—the same one that Tenma saved on that fateful day nine years ago.'
  ),
  Manga(
    title: 'Slam Dunk', 
    coverImage: 'images/slamdunk.jpg',
    author: 'Inoue Takehiko', 
    rating: 9.06, 
    status: 'Completed', 
    category: [
      'School life', 'Sports','Comedy','Shounen'
    ], 
    latestChapter: 'Chapter 276', 
    synopsis: 'Hanamichi Sakuragi, a tall, boisterous teenager with flame-red hair and physical strength beyond his years, is eager to put an end to his rejection streak of 50 and finally score a girlfriend as he begins his first year of Shohoku High. However, his reputation for delinquency and destructiveness precedes him, and most of his fellow students subsequently avoid him like the plague. As his first day of school ends, he is left with two strong thoughts: "I hate basketball" and "I need a girlfriend.", but he soon discovers that there is perhaps more to basketball than he once thought.'
  ),
  Manga(
    title: 'Fullmetal Alchemist', 
    coverImage: 'images/fma.jpg',
    author: 'Arakawa Hiromu', 
    rating: 9.04, 
    status: 'Completed', 
    category: [
      'Action','Adventure','Fantasy','Drama','Shounen'
    ], 
    latestChapter: 'Chapter 116', 
    synopsis: 'Alchemists are knowledgeable who can manipulate and modify matter due to their art. Yet despite the wide range of possibilities, alchemy is not as all-powerful as most would believe. Edward and Alphonse Elric decide to ignore great taboo to do Human transmutation and bring their mother back to life. Unfortunately, not only do they fail in resurrecting her, they also pay an extremely high price for their arrogance: Edward loses his left leg and Alphonse his entire body. Furthermore, Edward also gives up his right arm in order to seal his brother\'s soul into a suit of armor.\nYears later, the young alchemists travel across the country looking for the Philosopher\'s Stone, in the hopes of recovering their old bodies with its power. However, their quest for the fated stone also leads them to unravel far darker secrets than they could ever imagine.'
  ),
  Manga(
    title: 'Oyasumi Punpun', 
    coverImage: 'images/oyasumipunpun.jpg',
    author: 'Asano Inio', 
    rating: 9.03, 
    status: 'Completed', 
    category: [
      'Drama','Slice of Life','Psychological','Seinen'
    ], 
    latestChapter: 'Chapter 147', 
    synopsis: 'Punpun Onodera is a normal 11-year-old boy living in Japan. Hopelessly idealistic and romantic, Punpun begins to see his life take a subtle—though nonetheless startling—turn to the adult when he meets the new girl in his class, Aiko Tanaka. It is then that the quiet boy learns just how fickle maintaining a relationship can be, and the surmounting difficulties of transitioning from a naïve boyhood to a convoluted adulthood. When his father assaults his mother one night, Punpun realizes another thing: those whom he looked up to were not as impressive as he once thought.\nAs his problems increase, Punpun\'s once shy demeanor turns into voluntary reclusiveness. Rather than curing him of his problems and conflicting emotions, this merely intensifies them, sending him down the dark path of maturity in this grim coming-of-age saga.'
  ),
  Manga(
    title: 'Grand Blue', 
    coverImage: 'images/grandblue.jpg',
    author: 'Inoue Kenji (Story),\nYoshioka Kimitake (Art)', 
    rating: 9.03, 
    status: 'On Going', 
    category: [
      'Comedy','Slice of Life', 'Sports', 'Seinen'
    ], 
    latestChapter: 'Chapter 78', 
    synopsis: 'Among the seaside town of Izu\'s ocean waves and rays of shining sun, Iori Kitahara is just beginning his freshman year at Izu University. As he moves into his uncle\'s scuba diving shop, Grand Blue, he eagerly anticipates his dream college life, filled with beautiful girls and good friends.\nBut things don\'t exactly go according to plan. Upon entering the shop, he encounters a group of rowdy, naked upperclassmen, who immediately coerce him into participating in their alcoholic activities. Though unwilling at first, Iori quickly gives in and becomes the heart and soul of the party. Unfortunately, this earns him the scorn of his cousin, Chisa Kotegawa, who walks in at precisely the wrong time. Undeterred, Iori still vows to realize his ideal college life, but will things go according to plan this time, or will his situation take yet another dive?'
  ),
  Manga(
    title: 'Vinland Saga', 
    coverImage: 'images/vinlandsaga.jpg',
    author: 'Yukimura Makoto', 
    rating: 8.99, 
    status: 'On Going', 
    category: [
      'Action','Adventure','Historical','Martial Arts','Psychological','Seinen'
    ], 
    latestChapter: 'Chapter 196', 
    synopsis: 'Thorfinn, son of one of the Vikings\' greatest warriors, is among the finest fighters in the merry band of mercenaries run by the cunning Askeladd, an impressive feat for a person his age. However, Thorfinn is not part of the group for the plunder it entails—instead, for having caused his family great tragedy, the boy has vowed to kill Askeladd in a fair duel. Not yet skilled enough to defeat him, but unable to abandon his vengeance, Thorfinn spends his boyhood with the mercenary crew, honing his skills on the battlefield among the war-loving Danes, where killing is just another pleasure of life.\nOne day, when Askeladd receives word that Danish prince Canute has been taken hostage, he hatches an ambitious plot—one that will decide the next King of England and drastically alter the lives of Thorfinn, Canute, and himself. Set in 11th-century Europe, Vinland Saga tells a bloody epic in an era where violence, madness, and injustice are inescapable, providing a paradise for the battle-crazed and utter hell for the rest who live in it.'
  ),
];