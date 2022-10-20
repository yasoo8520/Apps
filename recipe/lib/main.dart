import 'package:flutter/material.dart';
import 'recipe.dart';
import 'carddetailpage.dart';
void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget{
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme:theme.colorScheme.copyWith(
          primary: Colors.red,
          secondary: Colors.redAccent
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState  extends State<HomePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Calculator'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder:(context, index) {
              //update the card
              return GestureDetector(
                child: buildRecipeCard(Recipe.samples[index]),
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context){
                    return  CardDetailPage(recipe:Recipe.samples[index]);
                  })
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
  Widget buildRecipeCard(Recipe recipe){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
              children: [
                Image(image: AssetImage(recipe.imageurl),),
                SizedBox(
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: RichText(text: TextSpan(
                    text: recipe.label,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Palatino'
                    )
                  ),
                  ),
                ),
              ],
            ),
      ),

    );
  }
}

