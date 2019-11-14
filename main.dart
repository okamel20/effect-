import 'package:flutter/material.dart';
import 'ui/SplashScreen.dart';
import 'ui/SignupScreen.dart';
import 'ui/LoginScreen.dart';
import 'ui/HomeScreen.dart';
import 'ui/SectionScreen.dart';
import 'ui/Section2Screen.dart';
import 'ui/SubCategory.dart';
import 'ui/ProductScreen.dart';
import 'ui/BasketScreen.dart';
import 'ui/itemEdit.dart';
import 'ui/OrderScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Effect Ecommrece',
      initialRoute: 'splash',
      // home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'splash'      : (BuildContext context) => SplashScreen(),
        'signup'      : (BuildContext context) => SignupScreen(),
        'login'       : (BuildContext context) => LoginScreen(),
        'home'        : (BuildContext context) => HomeScreen(),
        'subCategory' : (BuildContext context) => SubCategory(),
        'section'     : (BuildContext context) => SectionScreen(),
        'section2'    : (BuildContext context) => Section2Screen(),
        'product'     : (BuildContext context) => ProductScreen(),
        'basket'      : (BuildContext context) => BasketScreen(),
        'itemEdit'    : (BuildContext context) => ItemEdit(),
        'order'       : (BuildContext context) => OrderScreen(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF2FB89E),
        accentColor: Color(0xFFF48D48),
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20
          )
        ),
      ),
    );
  }
 
}

