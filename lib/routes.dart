import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/profile/profile.dart';
import 'screens/upload/upload.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String upload = '/upload';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      // case login:
      //   return MaterialPageRoute(builder: (_) => LoginScreen());
      // case register:
      //   return MaterialPageRoute(builder: (_) => RegisterScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      // case settings:
      //   return MaterialPageRoute(builder: (_) => SettingsScreen());
      // case about:
      //   return MaterialPageRoute(builder: (_) => const AboutScreen());
      case upload:
        return MaterialPageRoute(builder: (_) => UploadPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundScreen(),
        );
    }
  }
}

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Text('404 - Page Not Found'),
      ),
    );
  }
}