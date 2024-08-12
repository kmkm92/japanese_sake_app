import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';
import 'package:japanese_sake_app/ui/screens/add_my_sake_list_screen.dart';
import 'package:japanese_sake_app/ui/screens/my_sake_details_screen.dart';

class MySakeListScreen extends ConsumerWidget {
  const MySakeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myBrands = ref.watch(myBrandsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('飲んだ日本酒リスト'),
      ),
      body: myBrands.isEmpty
          ? const Center(child: Text('データがありません'))
          : ListView.builder(
              itemCount: myBrands.length,
              itemBuilder: (context, index) {
                final brand = myBrands[index];
                return Dismissible(
                  key: Key(brand.id.toString()),
                  onDismissed: (direction) {
                    ref
                        .read(myBrandsNotifierProvider.notifier)
                        .deleteBrand(brand.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${brand.brand}を削除しました')),
                    );
                  },
                  background: Container(color: Colors.red),
                  child: ListTile(
                    leading: const Icon(Icons.local_drink),
                    title: Text(brand.brand),
                    subtitle: Text('酒蔵: ${brand.brewery}、地域: ${brand.area}'),
                    trailing: Text('回数: 1'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MySakeDetailsScreen(id: brand.id),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddSakeScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
