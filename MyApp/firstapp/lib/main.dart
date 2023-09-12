import 'package:flutter/material.dart';
import './flutter_expandable_fab.dart';

void main() {
  runApp(const MyApp());
}

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      scaffoldMessengerKey: scaffoldKey,
      home: const FirstPage(),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final _counter = ValueNotifier(0);

  CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, counter, _) {
              return Text(
                '$counter',
                style: Theme.of(context).textTheme.displayMedium,
              );
            },
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text('add'),
            onPressed: () => _counter.value++,
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _key = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CounterWidget(),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: _key,
        overlayStyle: ExpandableFabOverlayStyle(
          // color: Colors.black.withOpacity(0.5),
          blur: 5,
        ),
        onOpen: () {
          debugPrint('onOpen');
        },
        afterOpen: () {
          debugPrint('afterOpen');
        },
        onClose: () {
          debugPrint('onClose');
        },
        afterClose: () {
          debugPrint('afterClose');
        },
        children: [
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(Icons.edit),
            onPressed: () {
              const SnackBar snackBar = SnackBar(
                content: Text("SnackBar"),
              );
              scaffoldKey.currentState?.showSnackBar(snackBar);
            },
          ),
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const NextPage())));
            },
          ),
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(Icons.share),
            onPressed: () {
              final state = _key.currentState;
              if (state != null) {
                debugPrint('isOpen:${state.isOpen}');
                state.toggle();
              }
            },
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('next'),
      ),
      body: const Center(
        child: Text('next'),
      ),
    );
  }
}