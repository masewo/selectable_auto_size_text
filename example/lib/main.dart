import 'package:flutter/material.dart';
import 'package:selectable_auto_size_text/selectable_auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SelectableText(
              'You have pushed the button this many times times times time1',
            ),
            const Text(
              'You have pushed the button this many times times times time1',
            ),
            const SelectableAutoSizeText(
              'You have pushed the button this many times times times time1',
            ),
            // SelectableText(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth:
                      MediaQuery.of(context).size.width - 48 - 34 - 16,
                ),
                child: Container(
                    height: 72,
                    // width: availableWidth - 48 - 34 - 16 - 100,
                    alignment: Alignment.centerLeft,
                    child: const SelectableAutoSizeText(
                      'Telefonica Bonus-Deals: z. B. Samsung Galaxy S21 mit 40 GB 5G/LTE 5G/LTE 5G/LTE 1G/LTE 2G/LTE 3G/LTE 4G/LTE 5G/LTE 6G/LTE 7G/LTE 8G/LTE',
                      // context: context,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blueAccent,
                      ),
                      minFontSize: 14,
                      maxFontSize: 20,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ))),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // SelectableAutoSizeText(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
