import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vega Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  int b = 0;
  int sum = 0;
  int difference = 0;
  int product = 0;
  double quotient = 0;

  void updatesum() {
    setState(() {
      sum = a + b;
    });
  }

  void updateDifference() {
    setState(() {
      difference = a - b;
    });
  }

  void updateProduct() {
    setState(() {
      product = a * b;
    });
  }

  void updateQuotient() {
    setState(() {
      quotient = a / b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add and Subtract'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enter a value for a:'),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        a = int.tryParse(value) ?? 0;
                      });
                      updatesum();
                      updateDifference();
                      updateProduct();
                      updateQuotient();
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enter a value for b:'),
                const SizedBox(width: 10),
                SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          b = int.tryParse(value) ?? 0;
                        });
                        updatesum();
                        updateDifference();
                        updateProduct();
                        updateQuotient();
                      },
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Text('Sum of $a and $b us $sum'),
            const SizedBox(height: 1),
            Text('Difference of $a and $b is $difference'),
            Text('Product of $a and $b is $product'),
            Text('Quotient of $a and $b is $quotient'),
          ],
        ));
  }
}
