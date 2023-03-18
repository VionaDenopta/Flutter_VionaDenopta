import 'package:flutter/cupertino.dart';


class HomePage extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(

      navigationBar: const CupertinoNavigationBar(
        middle:  Text('Home Page'),
      ) ,

      child:  Center(
        child: Text('ini adalah Home Page'),      ),

    ) ;
  }
}