import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Auth
{
   FirebaseAuth _auth = FirebaseAuth.instance;
  void SignUp(String e1,String p1)
  {
    _auth.createUserWithEmailAndPassword(email: e1, password: p1);
  }


  void Login(String e1,String p1,BuildContext context)
  async{

    try
    {
      var data=await FirebaseAuth.instance.signInWithEmailAndPassword(email: e1, password: p1).then((value) => Navigator.pushNamed(context, '/home'));

    }
    on FirebaseAuthException catch(e)
    {
      if(e.code=='User Not Found'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Not Found Please Sign up "),backgroundColor: Colors.pink.shade600,));
      }
      else if(e.code=='Wrong Password'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password Wrong Please Sign Up"),backgroundColor: Colors.pink.shade600,));
      }
    }
  }
  bool CurrentUser(BuildContext context){
    if(_auth.currentUser==null)
    {
      return false;
    }
    else{
      return true;
    }
  }
}



