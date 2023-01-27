import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prac1 extends StatefulWidget {
  const Prac1({Key? key}) : super(key: key);

  @override
  State<Prac1> createState() => _Prac1State();
}

class _Prac1State extends State<Prac1> {
  int value = 0;
  List<int> productPrice = [10, 20, 30, 40, 50, 60];
  List<int> count = [];

  @override
  void initState() {
    count = List.generate(productPrice.length, (_) => 0);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text("listincrement_in listviewbuilder"),
          ListView.builder(
              shrinkWrap: true,
              itemCount: productPrice.length,
              itemBuilder: (ctx, index) {
                return TextButton(
                    onPressed: () {
                      increment(index);
                    },
                    child: Column(
                      children: [
                        Text("value:${count[index]}"),
                        Text("list:${productPrice[index]}"),
                        const Text("Hello1"),
                      ],
                    ));
              }),
        ],
      ),
    );
  }

  void increment(int i) {
    print('pre: ${count[i]}');
    count[i] = count[i] + 1;

    productPrice[i] = productPrice[i] + 1;

    setState(() {
      print('now: ${count[i]}');
    });
  }
}
