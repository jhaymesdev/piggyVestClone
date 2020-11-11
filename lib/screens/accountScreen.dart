import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  static const routeName = "accountScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Card(
        child: Row(
          children: [
            Column(
              children: [
                Text("Enable"),
                Text("Two-factor Authorisation"),
              ],
            ),
            //the kwy image should be here
          ],
        ),
      )),
    );
  }
}
