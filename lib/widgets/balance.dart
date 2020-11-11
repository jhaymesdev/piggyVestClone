import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/balanceClass.dart';

class BalanceItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final balances = Provider.of<Balance>(context);
    return Container(
      height: 150,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: balances.balance.map((e) => Card(
          color: e.color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                e.icon,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(e.title,style: e.textColor,), Text("\$ ${e.amount}",style: e.textColor,)
                    ],
                  ),
                )
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}
