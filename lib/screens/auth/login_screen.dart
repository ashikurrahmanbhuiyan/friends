import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friends/main.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.chat_bubble_2_fill),
        title: const Text("Friends are here "),
      ),
      body: Stack(
        children: [
          Positioned(
          top: mq.height * .1,
          left: mq.width * .1,
          width: mq.width * .85,
          child:  Image.asset(
              'assets/images/friends-logo.png',
            ),
          ),
          Positioned(
          bottom: mq.height * .20,
          left: mq.width * .05,
          width: mq.width * .9,
          height: mq.height * .1,
          child: ElevatedButton.icon(
            onPressed: () {},
            //icon: Icon(Icons.safety_check),
            icon: Image.asset('assets/images/google.png', height: 50,),
            label: Text('Sign in With Google',style:TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              shape: StadiumBorder(),
            ),
            ),
          )
        ],
      ),
    );
  }
}
