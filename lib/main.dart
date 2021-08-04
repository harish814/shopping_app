import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_components/cart_model.dart';
import 'file:///C:/Users/Sree%20Harish/AndroidStudioProjects/with_heart/lib/screens/home_screen.dart';


// Future<void>
  main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // bool _seen = (prefs.getBool('loginUser')??false);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel(),
      child: MaterialApp(
          home: HomeScreen(),
          // home: _seen ? HomeScreen() : WelcomeScreen(),
          title: 'shopping',
          debugShowCheckedModeBanner: false,
        ),
    );
  }
}




//<a href="https://www.vecteezy.com/free-vector/stroke">Stroke Vectors by Vecteezy</a>
//<a href="https://www.vecteezy.com/free-vector/profile-avatar">Profile Avatar Vectors by Vecteezy</a>