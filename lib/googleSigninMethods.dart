import 'package:google_sign_in/google_sign_in.dart';

class googleSigninMethods {
  static var _signin = GoogleSignIn();

  static Future<GoogleSignInAccount?> login()=> _signin.signIn();

  static Future<GoogleSignInAccount?> logout()=> _signin.signOut();
}