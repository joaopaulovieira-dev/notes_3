import 'package:flutter/material.dart';
import 'package:notes_3/pages/create_note/create_note_page.dart';
import 'package:notes_3/pages/home/home_page.dart';
import 'package:notes_3/pages/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      initialRoute: '/login',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/create-note': (context) => const CreateNotePages(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.blue),
      ),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.blue),
    );
  }
}
