import 'package:flutter/material.dart';
import 'package:salama/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Salama'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            ListTile(
              leading: Text('App Name'),
              trailing: Text(Secrets.appName),
            ),
            ListTile(
              leading: Text('App Owner'),
              trailing: Text(
                Secrets.appOwner,
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              leading: Text('Base Url'),
              trailing: Text(Secrets.baseUrl),
            ),
          ],
        ),
      ),
    );
  }
}
