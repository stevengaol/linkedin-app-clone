import 'package:flutter/material.dart';
import 'package:linkedin_app/providers/user_provider.dart';
import 'package:linkedin_app/screens/signup_page.dart/signup_screen2.dart';
import 'package:provider/provider.dart';
import 'package:linkedin_app/providers/user_post_provider.dart';
import 'package:linkedin_app/screens/signin_page/signin_screen.dart';
import 'package:linkedin_app/screens/welcome_page/welcome_page.dart';
import 'package:linkedin_app/main_page.dart';
import 'package:linkedin_app/screens/home_page/post_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserPostProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LinkedIn Clone",
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/signup': (context) => const SignUpScreen2(),
        '/signin': (context) => const SignInScreen(),
        '/main': (context) => const MainPage(),
        '/post': (context) => const PostScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
