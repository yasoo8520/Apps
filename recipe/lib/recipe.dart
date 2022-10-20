class Recipe{
  String label;
  String imageurl;
  int servings;
  List <Ingradiant> ingradiant;
  Recipe(
      this.label,
      this.imageurl,
      this.servings,
      this.ingradiant,
      );
  static List<Recipe> samples=[
    Recipe(
      'cheesy Ground Quesadillas',
      'assets/images/cheesy Ground Beef Quesadillas.jpg',
      1,
      [
        Ingradiant(4, 'oz', 'nachos',),
        Ingradiant(3, 'oz', 'taco meat',),
        Ingradiant(0.5, 'cup', 'cheese',),
        Ingradiant(0.25, 'cup', 'chopped tomatoes',),
      ]
    ),
    Recipe(
        'Corn Fritters',
        'assets/images/Corn Fritters Recipe.jpg',
        5,
        [
          Ingradiant(0.5, 'cup', 'cheese',),
          Ingradiant(0.25, 'cup', 'chopped tomatoes',),
        ]
    ),
    Recipe(
        'Garlic Butter Steak with Potatoes Skillet',
        'assets/images/Garlic Butter Steak Recipe with Potatoes Skillet.jpg',
        3,
        [
          Ingradiant(4, 'oz', 'nachos',),
        ]
    ),
    Recipe(
        'One-Pot Garlic Parmesan Pasta with Spinach and Mushrooms',
        'assets/images/One-Pot Garlic Parmesan Pasta with Spinach and Mushrooms.jpg',
        1,
        [
          Ingradiant(4, 'oz', 'nachos',),
          Ingradiant(3, 'oz', 'taco meat',),
          Ingradiant(0.5, 'cup', 'cheese',),
        ]
    ),
    Recipe(
        'Cucumber Avocado Salad',
        'assets/images/Cucumber Avocado Salad.jpg',
      16,
      []
    ),
    Recipe(
        'Roasted Garlic Potatoes',
        'assets/images/Roasted Garlic Potatoes Recipe.jpg',
      20,
      []
    ),
  ];

}
class Ingradiant{
  var quantity;
  String measure;
  String name;
  Ingradiant(
      this.quantity,
      this.measure,
      this.name,
      );
}