import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_provider/response_display.dart';
import 'app_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<AppState>(
          create: (_) => AppState(),
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // TextDisplay(),
              // TextEditWidget(),
              RaisedButton(
                onPressed: () => appState.fetchData(),
                child: Text("Fetch Data from Network"),
              ),
              ResponseDisplay(),
            ],
          ),
        ),
      ),
    );
  }
}
