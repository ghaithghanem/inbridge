import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:inbridge_pfe/controller/admin_controller/add_user.dart';
import 'package:inbridge_pfe/view/admin_screens/adduser.dart';
import 'package:inbridge_pfe/view/admin_screens/homescreen.dart';
import 'package:inbridge_pfe/view/admin_screens/notificationscreen.dart';
import 'package:inbridge_pfe/view/admin_screens/profilscreen.dart';
import 'package:inbridge_pfe/view/admin_screens/taskscreen.dart';
import 'package:inbridge_pfe/view/admin_screens/user_manager.dart';
import 'package:inbridge_pfe/view/login_screens/login_screen.dart';
import 'package:inbridge_pfe/view/splashcreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      initialBinding: BindingsBuilder(() {
        // Instantiate and register ResetPasswordController
        //Get.put(ResetPasswordController());
        // Register UserService as a singleton
        //Get.put<UserService>(UserService());
        Get.put(UserController());
        //Get.put(EntryPoint());
      }),
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/add_user', page: () => Adduser()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/task', page: () => TaskScreen()),
        GetPage(name: '/notifications', page: () => NotificationScreen()),
        GetPage(name: '/profile', page: () => ProfilScreen()),
        GetPage(name: '/usermanager', page: () => UserManager()),
        // ... other pages
      ],
    );
  }
}

