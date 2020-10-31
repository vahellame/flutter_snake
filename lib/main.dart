// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => CounterTwo()),
      ],
      child: App(),
    ),
  );
}


class Counter with ChangeNotifier {
  int _count = 42;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class CounterTwo with ChangeNotifier {
  int _count = 42;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              /// Calls `context.read` instead of `context.watch` so that it does not rebuild
              /// when [Counter] changes.
              onPressed: () => context.read<Counter>().increment(),
              tooltip: 'Increment WHERE AM I',
              child: const Icon(Icons.add),
            ),
            const Text('You have pushed the button this many times:'),

            /// Extracted as a separate widget for performance optimization.
            /// As a separate widget, it will rebuild independently from [MyHomePage].
            ///
            /// This is totally optional (and rarely needed).
            /// Similarly, we could also use [Consumer] or [Selector].
            const Count(),
            const CountTwo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        /// Calls `context.read` instead of `context.watch` so that it does not rebuild
        /// when [Counter] changes.
        onPressed: () => context.read<CounterTwo>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}

class CountTwo extends StatelessWidget {
  const CountTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
      '${context.watch<CounterTwo>().count}',
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter>().count}',
    );
  }
}