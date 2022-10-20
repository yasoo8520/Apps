import 'package:flutter/material.dart';
import 'image.dart';
class ImageDetails extends StatefulWidget{
  final Images images;
  ImageDetails({
    Key? key,
    required this.images,
}): super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _ImageDetailsState();
  }

}

class _ImageDetailsState extends State<ImageDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.images.title),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio:1/1,
                  child: Image(image: AssetImage(widget.images.imgurl),)
              ),
              RichText(text: TextSpan(
                text: widget.images.title,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30
                )
              ))
            ],
          ),
        ),
      ),
    );
  }
}