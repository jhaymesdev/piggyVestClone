import 'package:flutter/material.dart';
import '../screens/accountScreen.dart';

class Pleasantry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ifiok,", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Wash Your Hands"),
          ],
        ),
        IconButton(icon: Icon(Icons.account_circle_sharp,size:40,), onPressed:(){
          Navigator.of(context).pushNamed(Account.routeName);
        }),
      ],
    ),);
  }
}
