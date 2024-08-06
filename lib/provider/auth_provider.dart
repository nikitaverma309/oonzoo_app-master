import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oonzoo_assingment/screen/auth_screen/splash_screen.dart';
import 'package:oonzoo_assingment/screen/home_screen/home_page.dart';

import '../common/constant.dart';

class AuthProvider with ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  final Constants _constants = Constants();

  bool isLoading = false;

  Future googleLogin({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw ("google login error : google user is null");
      }
      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      await FirebaseAuth.instance.signInWithCredential(credential);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return HomePage();
      }));

      _constants.getToast(message: "User Login Successfully", context: context);
    } catch (e) {
      print(e);
      _constants.getToast(message: "Something went wrong", context: context);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future logout({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw "user not found";
      }

      FirebaseAuth.instance.signOut();

      await googleSignIn.disconnect();

      _constants.getToast(
          message: "User Logout Successfully", context: context);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (builder) {
        return SplashPage();
      }));
    } catch (e) {
      _constants.getToast(message: "Something went wrong", context: context);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
