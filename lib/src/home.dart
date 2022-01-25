import 'package:flutter/material.dart';
import 'package:pollin/src/providers/count_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountProvider _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pollin'"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, provider, child) {
          return Text(
            _countProvider.count.toString(),
            style: const TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                _countProvider.add();
              },
              icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {
                _countProvider.remove();
              },
              icon: const Icon(Icons.remove))
        ],
      ),
    );
  }
}
