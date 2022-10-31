import 'package:firebase_auth/firebase_auth.dart';
class DbAuth{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future SignInAuth() async{
    try{
      UserCredential  result =await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }


  }
}