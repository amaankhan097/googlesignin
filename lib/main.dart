import 'package:flutter/material.dart';
import 'package:google_login/googleSigninMethods.dart';

import 'GoogleLoggedInPage.dart';

void main(){
  runApp(
      const MaterialApp(
    title: "Google Signin",
    home: GoogleLogin(),
  ));
}
class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  State<GoogleLogin> createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleLogin"),),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              login();
            },
            child: Text("GoogleLogin"),
          ),
        ),
      ),
    );
  }

  Future login() async{
    final user = await googleSigninMethods.login();

    if(user==null){
      print("Not getting logged in");
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GoogleSignedIn(users: user)));
    }
  }
}
