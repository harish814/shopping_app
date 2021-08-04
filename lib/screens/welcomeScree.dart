import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_heart/components/constants.dart';
import 'package:with_heart/components/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool otpSent = false;
  String phNumber;
  final _codeController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground_color,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Be',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                      child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText('AWESOME'),
                            RotateAnimatedText('OPTIMISTIC'),
                            RotateAnimatedText('DIFFERENT'),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sing IN',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w200,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
              onChanged: (value) {
                phNumber = value;
              },
              decoration: kInputDecoration.copyWith(
                  hintText: 'Enter your phone number'),
            ),
            SizedBox(
              height: 15,
            ),
            RoundedButton(
              title: 'Send OTP',
              color: Colors.lightBlueAccent[100],
              onPressed: () {
                print('working wait');
                setState(() {
                  // varifyPhone(phNumber, context);
                  otpSent = true;
                });
              },
            ),
            otpSent
                ? Text(
                    'Please wait! we are verifying your phone number',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
  //
  // Future<void> varifyPhone(String phNumber, BuildContext context) async {
  //   final _auth = FirebaseAuth.instance;
  //   String PhNumber = '+91$phNumber}';
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: PhNumber,
  //       verificationCompleted: (AuthCredential authResult) async {
  //         Navigator.of(context).pop();
  //         UserCredential result = await _auth.signInWithCredential(authResult);
  //         User user = result.user;
  //
  //         if (user != null) {
  //           SharedPreferences prefs = await SharedPreferences.getInstance();
  //           prefs.setBool('loginUser', true);
  //           Navigator.of(context).pushAndRemoveUntil(
  //               MaterialPageRoute(builder: (context) {
  //                 return HomeScreen();
  //               }), (Route<dynamic> route) => false);
  //         } else {
  //           print('error');
  //         }
  //       },
  //       verificationFailed: (FirebaseAuthException authException) {
  //         String status;
  //         print('this is a exeption $authException');
  //         setState(() {
  //           otpSent = false;
  //           status = '${authException.message}';
  //           print("Error message: " + status);
  //           if (authException.message.contains('not authorized'))
  //             status = 'Something has gone wrong, please try later';
  //           else if (authException.message.contains('Network'))
  //             status = 'Please check your internet connection and try again';
  //           else if (authException.message.contains('blocked all requests'))
  //             status = 'You crossed your day limit please try sometime later';
  //           else
  //             status = 'Something has gone wrong, please try later';
  //         });
  //         showDialog(
  //             context: context,
  //             builder: (context) {
  //               return AlertDialog(
  //                 title: Text(status),
  //               );
  //             });
  //       },
  //       codeSent: (String verificationId, [int forceResendingToken]) {
  //         showDialog(
  //             context: context,
  //             barrierDismissible: false,
  //             builder: (context) {
  //               return AlertDialog(
  //                 title: Text('enter otp'),
  //                 content: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: <Widget>[
  //                     TextField(
  //                       controller: _codeController,
  //                     ),
  //                   ],
  //                 ),
  //                 actions: <Widget>[
  //                   FlatButton(
  //                     onPressed: () async {
  //                       final code = _codeController.text.trim();
  //                       try {
  //                       AuthCredential credential =
  //                           PhoneAuthProvider.credential(
  //                               verificationId: verificationId, smsCode: code);
  //                         UserCredential result =
  //                             await _auth.signInWithCredential(credential);
  //                         User user = result.user;
  //                           if (user != null) {
  //                             SharedPreferences prefs =
  //                             await SharedPreferences.getInstance();
  //                             prefs.setBool('loginUser', true);
  //                             print('see thisssssssssssss6');
  //                               Navigator.of(context).pushAndRemoveUntil(
  //                                   MaterialPageRoute(builder: (context) {
  //                                     return HomeScreen();
  //                                   }), (Route<dynamic> route) => false);
  //                             print('see thisssssssssssss7');
  //                           }
  //                         }catch(e){
  //                           setState(() {
  //                             otpSent = false;
  //                           });
  //                           showDialog(
  //                               context: context,
  //                               builder: (context) {
  //                                 return AlertDialog(
  //                                   title: Text(
  //                                       'Error try again $e'),
  //                                 );
  //                               });
  //                         }
  //
  //                     },
  //                     child: Text('enter otpppppppppppp'),
  //                     color: Colors.blue,
  //                   )
  //                 ],
  //               );
  //             });
  //       },
  //       timeout: const Duration(seconds: 60),
  //       codeAutoRetrievalTimeout: (String verificationId) {});
  // }
}
