import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.amber,
                  child: const Text('Layout Superior'),
                ), // Container
              ), // Expanded
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                          //alignment: Alignment.center,
                          //color: Colors.red,
                          //child: const Text('Primeira Coluna'),
                          ), // Container
                    ), // Expanded
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black, // Cor da borda
                            width: 1, // Largura da borda
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 10,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: const Text('Meu Aplicativo'),
                      ), // Container
                    ), // Expanded
                    Expanded(
                      child: Container(
                          //alignment: Alignment.center,
                          //color: Colors.purple,
                          //child: const Text('Terceira Coluna'),
                          ), // Container
                    ), // Expanded
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.blue,
                  child: const Text('Layout Inferior'),
                ), // Container
              ), // Ex// Row
            ])));
  }
}
