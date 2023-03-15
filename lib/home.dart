import 'package:first_algo/calculator.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _num1 = 0;
  int _num2 = 0;
  int _num3 = 0;
  int _num4 = 0;
  int _num5 = 0;

  void _setNum1(String value) {
    setState(() {
      _num1 = int.tryParse(value) ?? 0;
    });
  }

  void _setNum2(String value) {
    setState(() {
      _num2 = int.tryParse(value) ?? 0;
    });
  }

  void _setNum3(String value) {
    setState(() {
      _num3 = int.tryParse(value) ?? 0;
    });
  }

  void _setNum4(String value) {
    setState(() {
      _num4 = int.tryParse(value) ?? 0;
    });
  }

  void _setNum5(String value) {
    setState(() {
      _num5 = int.tryParse(value) ?? 0;
    });
  }
  void _resetValues() {
  setState(() {
    _num1 = 0;
    _num2 = 0;
    _num3 = 0;
    _num4 = 0;
    _num5 = 0;
  });
}

  int _sum() {
    return _num1 + _num2 + _num3 + _num4 + _num5;
  }

  int _product() {
    return _num1 * _num2 * _num3 * _num4 * _num5;
  }

  double _average() {
    return _sum() / 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
      IconButton(
        icon: const Icon(Icons.refresh),
        onPressed: _resetValues,
      ),
    ],
      ),
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  
                  decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter first number'),
                  onChanged: _setNum1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter second number'),
                  onChanged: _setNum2,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter third number'),
                  onChanged: _setNum3,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter fourth number'),
                  onChanged: _setNum4,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter fifth number'),
                  onChanged: _setNum5,
                ),
                const SizedBox(height: 20),
                CalculatorResult(sum: _sum(), product: _product(), average: _average()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
