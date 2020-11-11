import 'package:flutter/material.dart';

class BalanceClass{
  final String title;
  final double amount;
  final Icon icon;
  final Color color;
  final TextStyle textColor;
  final TextStyle textStyle;


  BalanceClass({
    @required this.title,
    @required this.amount,
    @required this.color,
    @required this.icon,
    @required this.textColor,
    this.textStyle,
});
}
class Balance with ChangeNotifier{
  List<BalanceClass> _balance = [
    BalanceClass(title: "Total Saving",
        amount: 7539.23,
        color: Colors.blueAccent,
        icon: Icon(Icons.shield,color: Colors.white,),
        textColor: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23)),
    BalanceClass(title: "Total Investment", amount: 0.3,
        color: Colors.purple,
        icon: Icon(Icons.show_chart,color: Colors.white,),
        textColor: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23)),
    BalanceClass(title: "Dollars", amount: 45.65,
        color: Colors.black87,
        icon: Icon(Icons.attach_money,color: Colors.white,),
        textColor: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23)),
    BalanceClass(title: "Flex", amount: 700.0,
        color: Colors.white,
        icon: Icon(Icons.add_box_sharp,color: Colors.redAccent,),
        textStyle: TextStyle(color: Colors.redAccent),
        textColor: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23,)),
  ];
  List<BalanceClass> get balance {
    return [..._balance];
  }
}