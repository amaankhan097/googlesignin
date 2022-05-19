import 'package:flutter/material.dart';
import 'package:google_login/googleSigninMethods.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'main.dart';

class GoogleSignedIn extends StatefulWidget {
   GoogleSignInAccount users;
   GoogleSignedIn({Key? key,required this.users}) : super(key: key);

  @override
  State<GoogleSignedIn> createState() => _GoogleSignedInState();
}

class _GoogleSignedInState extends State<GoogleSignedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GoogleSign"),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image(image: NetworkImage(widget.users.photoUrl!)),
              Text(widget.users.displayName!),
              Text(widget.users.email),
              ElevatedButton(
                onPressed: () async {
                  await googleSigninMethods.logout();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GoogleLogin()));
                },
                child: Text("Logout"),
              ),
      ]
          ),
        ),
      ),
    );
  }
}
