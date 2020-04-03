import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/order_item.dart' ;
import '../providers/orders.dart' show Orders;
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderItem = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Your Orders'),),
        drawer: AppDrawer(),
      body: ListView.builder(itemCount: orderItem.orders.length, itemBuilder: (ctx, i) => OrderItem(orderItem.orders[i]),)
    );
  }
}
