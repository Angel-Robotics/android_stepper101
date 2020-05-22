import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Stepper(
                  type: StepperType.horizontal,
                  steps: [
                    Step(
                      title: Text("Start"),
                      content: Text("Before starting, we should create a page."),
                    ),
                    Step(
                      title: Text("Constructor"),
                      content: Text("Let's look at its construtor."),
                    ),
                    Step(
                        title: Text("Second"),
                        subtitle: Text("Constructor"),
                        content: Text("Let's look at its construtor."),
                        state: StepState.editing,
                        isActive: true),
                    Step(
                        title: Text("Third"),
                        subtitle: Text("Constructor"),
                        content: Text("Let's look at its construtor."),
                        state: StepState.error),
                    Step(
                      title: Text("Constructor"),
                      content: Text("Let's look at its construtor."),
                    ),
                    Step(
                      title: Text("Constructor"),
                      content: Text("Let's look at its construtor."),
                    ),
                    Step(
                      title: Text("Constructor"),
                      content: Text("Let's look at its construtor."),
                    ),
                    Step(
                      title: Text("Constructor"),
                      content: Text("Let's look at its construtor."),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
