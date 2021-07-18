import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:flash_chat/components/my_button.dart';

class WelcomeScreen extends StatefulWidget {
   static String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  // AnimationController controller;
  // Animation animation;
  // @override
  // void initState() {
  //   super.initState();
  //   controller=AnimationController(
  //     duration: Duration(seconds: 1),
  //     vsync: this,
  //   );
  //   animation=ColorTween(begin: Colors.blueGrey,end: Colors.white).animate(controller);
  //   controller.forward();
  //   controller.addListener((){
  //     setState(() {});
  //   });
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            MyButton(title: 'Log in',
            color: Colors.lightBlueAccent,
            onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            MyButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
