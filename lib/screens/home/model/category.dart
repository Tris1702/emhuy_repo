class Category {
  String title;
  int totalCard;
  int studiedCard;
  String imgPath;

  Category({
    this.title = '',
    this.totalCard = 1,
    this.studiedCard = 0,
    this.imgPath = ''
  });

  static List<Category> studyingList = <Category>[
    Category(
      title: 'Concept 1',
      totalCard: 30,
      studiedCard: 15,
      imgPath: 'assets/home/lessons/lesson1.png'
    ),
    Category(
        title: 'Concept 2',
        totalCard: 45,
        studiedCard: 15,
        imgPath: 'assets/home/lessons/lesson2.png'
    ),
    Category(
        title: 'Concept 3',
        totalCard: 20,
        studiedCard: 5,
        imgPath: 'assets/home/lessons/lesson3.png'
    ),
    Category(
        title: 'Concept 4',
        totalCard: 30,
        studiedCard: 30,
        imgPath: 'assets/home/lessons/lesson4.png'
    ),
    Category(
        title: 'Concept 5',
        totalCard: 42,
        studiedCard: 42,
        imgPath: 'assets/home/lessons/lesson5.png'
    ),
  ];
}