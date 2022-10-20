import 'package:flutter/material.dart';
import 'recipe.dart';
class CardDetailPage extends StatefulWidget{
  final Recipe recipe;
  const CardDetailPage({
    Key ? key,
    required this.recipe,
}):super(key: key);
  @override
  State<CardDetailPage> createState() {
    return _CardDetailPageState();
  }
}

class _CardDetailPageState extends State<CardDetailPage>{
  int _sildval =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(widget.recipe.label),
      ) ,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 4),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Image(image: AssetImage(widget.recipe.imageurl),width: double.infinity),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            RichText(text: TextSpan(
              text: widget.recipe.label,
              style: TextStyle(
                fontSize: 25,
                color: Colors.red
              )
            )),
            Container(
              height: 200,
              color: Colors.white10,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
              padding: EdgeInsets.only(top: 20),
              child: ListView.builder(
                itemCount: widget.recipe.ingradiant.length,
                itemBuilder: ((context, index) {
                  final ingraudant =widget.recipe.ingradiant[index];
                  return customeIngraduents(ingraudant);
                }),
              ),
            ),
            Slider(
              min: 1,
                max: 10,
                divisions: 9,
                value: _sildval.toDouble(),
                label: '${_sildval * widget.recipe.servings} Servings',
                onChanged: (newval){
                setState(() {
                      _sildval = newval.round();
                });
                },
              activeColor: Colors.red,
              inactiveColor: Colors.red[300],
            ),
          ],
        ),
      ),
    );
  }
  Widget customeIngraduents (Ingradiant ingraudant){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: RichText(
          text: TextSpan(
            text: '${ingraudant.quantity * _sildval} : ',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black38,
            ),
            children: [
              TextSpan(text:ingraudant.measure,style:const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ingraudant.name,style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
      ),
    );
  }
}