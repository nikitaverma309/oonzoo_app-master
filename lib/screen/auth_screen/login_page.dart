import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  login() async {
    var provider = Provider.of<AuthProvider>(context, listen: false);
    await provider.googleLogin(context: context);
  }

  @override
  Widget build(BuildContext context) {
    buildOutLinedButton({required String title, required String iconName}) {
      return InkWell(
        onTap: () async {
          await login();
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(.3))),
          child: Row(
            children: [
              Spacer(),
              Image.asset(
                iconName,
                height: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(title),
              Spacer(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(child: Image.asset("assets/logo.jpg")),
            SizedBox(
              height: 30,
            ),
            Text(
              "Login / Register",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Email ID"),
            TextField(decoration: InputDecoration(hintText: "Enter Email ID")),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                await login();
              },
              child: Text("Continue".toUpperCase()),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.black12,
                )),
                Text("OR"),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.black12,
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buildOutLinedButton(
                title: "Facebook", iconName: "assets/facebook_icon.png"),
            SizedBox(
              height: 10,
            ),
            buildOutLinedButton(
                title: "Google", iconName: "assets/google_icon.png"),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton(
                  onPressed:  () async{
                    await  login();
                  },
                  child: Text("New to FirstCry? Register Here")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "By continuing, you agree to Firstcry's Conditions of Use and Privacy Notice."),
          ],
        ),
      ),
    );
  }
}
