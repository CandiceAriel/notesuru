import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); 
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.home),
            title: const Center(child: Text("Notes")),
            actions: const <Widget>[Icon(Icons.search)]),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Container(
                  color: theme.colorScheme.primary,
                  child:  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text("Note Title"),
                        Text("Created")
                      ],
                    ),
                  ) 
                ),
                Container(
                  color: theme.colorScheme.primary,
                  child:  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text("Note Title"),
                        Text("Created")
                      ],
                    ),
                  ) 
                ),
              ],
            ),
          )
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
