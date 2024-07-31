import 'package:flutter/material.dart';

class MyStoreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store List'),
      ),
      body: ListView.builder(
        itemCount: 10, // サンプルデータの数
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.store),
            title: Text('Store ${index + 1}'),
            subtitle: Text('Store description here'),
            onTap: () {
              // 店舗詳細画面へのナビゲーション
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoreDetailScreen(storeIndex: index)),
              );
            },
          );
        },
      ),
    );
  }
}

class StoreDetailScreen extends StatelessWidget {
  final int storeIndex;

  StoreDetailScreen({required this.storeIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store ${storeIndex + 1} Details'),
      ),
      body: Center(
        child: Text('Details for Store ${storeIndex + 1}'),
      ),
    );
  }
}
