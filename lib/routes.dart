import 'package:bank_app/modules/login/screen/login_screen.dart';
import 'package:get/get.dart';

class RoutesManager {
  static String initialRoute = '/';
  static List<GetPage<dynamic>> getPages = [
    GetPage(name: '/', page: () => LoginScreen()),
  ];
}
