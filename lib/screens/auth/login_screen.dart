import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friends/main.dart';
import 'package:friends/screens/home_screen.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool _isAnimate = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100),(){
      setState(() {
        _isAnimate = true;
      });
    });
  }

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
          //app logo
          AnimatedPositioned(
          top: mq.height * .1,
          right: _isAnimate ? mq.width * .1 : -mq.width,
          width: mq.width * .85,
          duration: Duration(seconds: 1),
          child:  Image.asset(
              'assets/images/friends-logo.png',
            ),
          ),
          // code will be written here if i write custom login script
          // Positioned(
          //     top: mq.height * .5,
          //     left: mq.width * .05,
          //     width: mq.width * .9,
          //     height: mq.height * .1,
          //      child: Form(child: TextFormField())),
          
          //google login button
          Positioned(
          bottom: mq.height * .15,
          left: mq.width * .05,
          width: mq.width * .9,
          height: mq.height * .1,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            //icon: Icon(Icons.safety_check), 
            icon: Image.asset('assets/images/google.png', height: 50,),
            label: Text('Login in With Google',style:TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              shape: StadiumBorder(),
            ),
            ),
          ),
          
        ],
      ),
    );
  }
}
