
// create immutable provider

// Alternative
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appbarProvider = Provider<String>((ref) => "Counter apppp");

// Second provider
final counterProvider = StateProvider<int>((ref) => 1);

class CounterView extends ConsumerWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(appbarProvider)),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          ref.watch(counterProvider).toString(),
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
