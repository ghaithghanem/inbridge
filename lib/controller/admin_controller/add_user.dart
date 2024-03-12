import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class UserController extends GetxController {
  final Dio _dio = Dio();

  Future<void> addUser(String name, String email) async {
    try {
      final response = await _dio.post(
        'http://10.0.2.2:3000/users/register',
        data: {
          'name': name,
          'email': email,
        },
      );
      print(response.data); // Print the response data
      print(response.statusCode); // Print the status code
      print(response.statusMessage); // Prin
      if (response.statusCode == 201) {
        // Show success dialog
        Get.dialog(
          AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Set rounded corners
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/14.png', // Your custom icon asset
                  width: 50,
                  height: 50,
                ),
                SizedBox(height: 10),
                Text(
                  'Your account has been created successfully',
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),
        );

      } else {
        // Get.snackbar(
        //   'Error',
        //   'Failed to add user',
        //   backgroundColor: Colors.red,
        //   colorText: Colors.white,
        // );
      }
    } catch (error) {
      // Get.snackbar(
      //   'Error',
      //   'Failed to add user: $error',
      //   backgroundColor: Colors.red,
      //   colorText: Colors.white,
      // );
    }
  }
}
