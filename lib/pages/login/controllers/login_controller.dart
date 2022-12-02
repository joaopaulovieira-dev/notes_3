// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes_3/auth/auth_controller.dart';
import 'package:notes_3/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await googleSignIn.signIn();
      final user = UserModel(
        uId: response!.id,
        name: response.displayName!,
        email: response.email,
        photoURL: response.photoUrl.toString(),
      );

      authController.setUser(context, user);

      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
