import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas/bloc/contact_bloc.dart';
import 'package:tugas/pages/contact_list_page.dart';
import 'package:tugas/pages/contact_new_page.dart';
import 'package:tugas/pages/contact_update_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: MaterialApp(
        initialRoute: "/",
        // routes: {
        //   "/": (context) => const ContactListPage(),
        //   "/contact/new": (context) => const ContactNewPage(),
        //   "/contact/update": (context) => const ContactUpdatePage()
        // },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        // home: const HomePage(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case "/contact/new":
              {
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const ContactNewPage();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween =
                        Tween(begin: const Offset(0, 1), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 300),
                );
              }
            case "/contact/update":
              {
                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const ContactUpdatePage();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween =
                        Tween(begin: const Offset(0, 1), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 300),
                  settings: settings,
                );
              }
          }

          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return const ContactListPage();
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 300),
          );
        },
      ),
    );
  }
}
