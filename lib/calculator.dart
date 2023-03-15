import 'package:flutter/material.dart';

class CalculatorResult extends StatelessWidget {
  final int sum;
  final int product;
  final double average;

  const CalculatorResult({
    Key? key,
    required this.sum,
    required this.product,
    required this.average,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      
      child: Container(
        height: 150,
        width: 250,
        color: const Color.fromARGB(174, 51, 228, 148),
        child: Column(
          
          children: [
            Text('Sum:     $sum',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20),
            Text('Product: $product',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20),
            Text('Average: $average',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
