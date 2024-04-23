import 'package:flutter/material.dart';
import 'package:video_meet/main_screen.dart';
// import home page if needed

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            Icon(Icons.videocam_rounded, color: Color(0xff0155FE), size: 200,),

            Text('Connect Now', style: TextStyle(color: Colors.white , fontWeight: FontWeight.w700, 
            fontSize: 34),)
          ],
        ),)
      ),
    );
  }
}
