import 'package:flutter/material.dart';
import 'package:shreeji_delivery_app/widgets/order_box_widget.dart';

class AssignedOrderScreen extends StatelessWidget {
  const AssignedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx,index){
        return const OrderBox();
      }),
    );
  }
}