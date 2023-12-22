import 'package:delivery_app/core/components/utils/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/package_export.dart';

final GetIt getIt = GetIt.instance;

class AppGlobals {
  factory AppGlobals() => instance;

  AppGlobals._();

  static final AppGlobals instance = AppGlobals._();

  String? isLoggedIn;
  int? isViewed;
  StopWatchTimer? stopWatchTimer;
  String? token = "";
  String? userId = "";
  String? userEmail = "";
  String? userPassword = "";

  Future<void> init() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    token = await getFromLocalStorage(name: "token") ?? "";
    userEmail = await getFromLocalStorage(name: "userEmail") ?? "";
    userPassword = await getFromLocalStorage(name: "userPassword") ?? "";
    userId = await getFromLocalStorage(name: "userId") ?? "";
    isViewed = preferences.getInt('onBoard');
    isLoggedIn = preferences.getString('isLoggedIn') ?? "";
    printData("token", token);
    printData("userEmail", userEmail);
    printData("isLoggedIn", isLoggedIn);
    // userProvider = getIt.get<UserProvider>();
  }

  void dispose() {}
}

AppGlobals globals = getIt.get<AppGlobals>();
