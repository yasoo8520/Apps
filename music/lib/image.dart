class Images{
  String title;
  String imgurl;
  //int like;
  //List <Additional> additional;
  Images(this.title,this.imgurl,);
  static List <Images> images=[
    Images(
        'photo 1',
        'assets/images/1.jpg',
    ),
    Images(
        'photo 2',
        'assets/images/2.jpg'
    ),
    Images(
        'photo 3',
        'assets/images/3.jpg'
    ),
    Images(
        'photo 4',
        'assets/images/4.jpg'
    ),
    Images(
        'photo 5',
        'assets/images/5.jpg'
    ),
    Images(
        'photo 6',
        'assets/images/6.jpg'
    ),
    Images(
        'photo 7',
        'assets/images/7.jpg'
    ),
    Images(
        'photo 8',
        'assets/images/8.jpg'
    ),
    Images(
        'photo 9',
        'assets/images/9.jpg'
    ),
    Images(
        'photo 10',
        'assets/images/10.jpg'
    ),
    Images(
        'photo 11',
        'assets/images/11.jpg'
    ),
    Images(
        'photo 12',
        'assets/images/12.jpg'
    ),
    Images(
        'photo 13',
        'assets/images/13.jpg'
    ),
    Images(
        'photo 14',
        'assets/images/14.jpg'
    ),
  ];
}
class Additional {
  double numofLIKES;
  String Author;
  String website;
  Additional(
      this.numofLIKES,
      this.Author,
      this.website,
      );

}