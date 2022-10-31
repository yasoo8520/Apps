import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future SignInAuth()async{
    Firebase.initializeApp();
    try{
      var result= await _auth.signInAnonymously();
      var user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }

  }
}