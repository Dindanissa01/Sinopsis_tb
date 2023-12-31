import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_apps/config/app_routes.dart';
import 'package:navigator_apps/models/user.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Size size;
  final User user = User.dummy();

  String? get assets => null;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).goNamed(
          AppRoutes.home,
          extra: null,
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    // ignore: prefer_typing_uninitialized_variables
    return Scaffold(
      body: Center(
        child: Image.asset(
<<<<<<< HEAD
          "assets/cinopsis.jpeg",
          fit: BoxFit.cover,
=======
          'assets/cinopsis.jpeg',
          width: size.width * 0.4,
>>>>>>> 34b945eeeecabed5aef7b55537eb93041fc92229
        ),
      ),
    );
  }
}
