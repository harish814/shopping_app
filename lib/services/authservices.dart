// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:with_heart/screens/displayScreen.dart';
// import 'package:with_heart/screens/welcomeScree.dart';
//
// class AuthServices{
//   handleAuth() {
//     if( FirebaseAuth.instance.currentUser == null){
//       print('user is present');
//       return DisplayScreen();
//     }else{
//     print('user not present');
//     return WelcomeScreen();
//     }
//   }
//
//   signOut(){
//     FirebaseAuth.instance.signOut();
//   }
//
//   signIn(AuthCredential authCredential){
//     FirebaseAuth.instance.signInWithCredential(authCredential);
//   }
// }