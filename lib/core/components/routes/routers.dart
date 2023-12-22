import 'package:delivery_app/core/components/routes/route.dart';
import 'package:delivery_app/core/features/onboarding/view/splash_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/globals.dart';
import '../utils/colors.dart';
import '../widgets/app_text.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //Splash screen
    // case RootRoutes.initial:
    //   return MaterialPageRoute(builder: (context) => const OnboardScreen());
    case RootRoutes.onboard:
      return MaterialPageRoute(builder: (context) => const SplashScreen());

    // case RootRoutes.phoneNumber:
    //   return MaterialPageRoute(builder: (context) => const PhoneNumberScreen());
    case RootRoutes.login:
      return MaterialPageRoute(builder: (context) => Container());
    case RootRoutes.createAccount:
      return MaterialPageRoute(builder: (context) => Container());
    case RootRoutes.getStarted:
      return MaterialPageRoute(builder: (context) => Container());
    case RootRoutes.tab:
      return MaterialPageRoute(builder: (context) => Container());

    default:
      {
        return _errorRoute();
      }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
            text: "Error",
            textAlign: TextAlign.start,
            fontSize: 20,
            color: AppColors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
        centerTitle: true,
      ),
      body: const Center(
        child: AppText(
            text: "Error",
            textAlign: TextAlign.start,
            fontSize: 20,
            color: AppColors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      ),
    );
  });
}

Future<String> initialRoute() async {
  // printData("userId", globals.user!.id);
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // var userToken = await getFromLocalStorage(name: token);
  // int? isviewed = prefs.getInt('onBoard');
  return globals.isViewed != 0
      ? RootRoutes.onboard
      : globals.token!.isEmpty
          ? RootRoutes.login
          : RootRoutes.tab;
}
