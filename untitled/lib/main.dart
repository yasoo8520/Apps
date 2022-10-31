import 'package:flutter/material.dart';
import 'dbauth.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    DbAuth _auth =DbAuth();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('click me'),
          onPressed: ()async{
            dynamic result = _auth.SignInAuth();
            if(result == null){
              print('Null Return');
            }else{
              print('Good Return');
            }
          },
        ),
      ),
    );
  }
}