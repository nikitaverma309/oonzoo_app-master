import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/provider/auth_provider.dart';
import 'package:oonzoo_assingment/screen/auth_screen/splash_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider()),
        ],
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: Color(0xffFF7043),
                scaffoldBackgroundColor: Color(0xffFFFFFF),
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                  Color(0xffFF7043),
                )))),
            home: SplashPage(),
          );
        });
  }
}
