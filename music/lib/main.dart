import 'package:flutter/material.dart';
import 'image.dart';
import 'imagedetails.dart';
void main() {
  runApp(GalleryLibrary());
}

class GalleryLibrary extends StatelessWidget {
  final ThemeData themedata = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Gallery Library',
      theme: themedata.copyWith(
       colorScheme: themedata.colorScheme.copyWith(
         primary: Colors.deepOrange,
         secondary: Colors.brown,
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

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Library'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: Images.images.length,
            itemBuilder:(context, index) {
              final route = MaterialPageRoute(builder: (context) => ImageDetails(images: Images.images[index],),);
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, route);
                },
                child: CustomImageCard(Images.images[index]),
              );
            },
        ),
      ),
    );
  }
  Widget CustomImageCard(Images images){
    return Card(
      elevation: 2,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      margin: EdgeInsets.only(top: 2,bottom: 2,left: 20,right: 20),
      child: Column(
        children: [
          Image(image: AssetImage(images.imgurl)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(text: TextSpan(
              text: images.title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),),
          ),
        ],
      ),
    );
  }
}
