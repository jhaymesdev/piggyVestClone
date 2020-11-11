import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/balanceClass.dart';
import '../widgets/balance.dart';
import '../widgets/pleasntries.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Pleasantry(),
            ChangeNotifierProvider.value(value: Balance(),
            child: BalanceItem()),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,bottom: 15.0),
              child: Text("Super Save Challenge", style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed("");
              },
              child: Container(
               width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-670 ,
                child: Card(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text("this is the first line"),
                      Text("this is the second line"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: darkMode?Colors.black87:Colors.white70,
      floatingActionButton: FloatingActionButton(onPressed: null),
    );
  }
}
