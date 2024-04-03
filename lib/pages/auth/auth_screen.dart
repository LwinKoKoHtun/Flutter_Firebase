import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:myfirebase_crud/locator.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final google = GoogleSignIn.standard();
    var query = MediaQuery.of(context).size;
    var screenWidth = query.width;
    var screenHeight = query.height;
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () async {
      //       final GoogleSignInAccount? account = await google.signIn();
      //       final GoogleSignInAuthentication? authentication =
      //           await account?.authentication;
      //       authentication?.idToken;
      //       // google.signOut();
      //       Locator<FirebaseAuth>()
      //           .signInWithCredential(GoogleAuthProvider.credential(
      //         idToken: authentication?.idToken,
      //         accessToken: authentication?.accessToken,
      //       ));
      //       //print(Locator<FirebaseAuth>().currentUser);
      //     },
      //     child: const Text('Login with Googles'),
      //   ),
      // ),

      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(colors: [Color.fromRGBO(a, r, g, b)]),
              ),
          width: screenWidth,
          height: screenHeight,
          child: Lottie.asset(
            'assets/lotties/login.json',
            fit: BoxFit.contain,
          ),
        ),
      ]),
    );
  }
}
