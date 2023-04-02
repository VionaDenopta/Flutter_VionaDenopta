import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final parameter = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
      ),
      body: Center(
        child: Image.asset("images/$parameter"),
      ),
    );
  }
}
