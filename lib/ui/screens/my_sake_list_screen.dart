import 'package:flutter/material.dart';

class MySakeListScreen extends StatelessWidget {
  const MySakeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('飲んだ日本酒リスト'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.local_drink),
            title: Text('日本酒 ${index + 1}'),
            subtitle: Text('酒蔵: 酒蔵${index + 1}'),
            trailing: Text('評価: ${(index % 5 + 1).toString()}'),
          );
        },
      ),
    );
  }
}
