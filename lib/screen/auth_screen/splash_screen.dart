import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/screen/home_screen/home_page.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    await Future.delayed(Duration(seconds: 1));
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset("assets/logo.jpg"),
              SizedBox(
                height: 28,
              ),
              Container(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
            ],
          ),
        ));
  }
}
