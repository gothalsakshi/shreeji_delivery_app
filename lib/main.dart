import 'package:flutter/material.dart';
import 'package:shreeji_delivery_app/pages/order/assigned_order/assigned_order_screen.dart';
import 'package:shreeji_delivery_app/pages/order/completed_order/completed_order_screen.dart';
import 'package:shreeji_delivery_app/pages/profile/profile_screen.dart';
import 'package:shreeji_delivery_app/widgets/order_box_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CompletedOrderScreen(),
    );
  }
}

