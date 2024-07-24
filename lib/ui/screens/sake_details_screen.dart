import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/sake_providers.dart';

class SakeDetailsScreen extends ConsumerWidget {
  final int sakeId;

  SakeDetailsScreen({required this.sakeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sakeViewModel = ref.watch(sakeViewModelProvider);
    final isFetching = sakeViewModel.isFetching;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sake Details'),
      ),
      body: isFetching
          ? Center(child: CircularProgressIndicator())
          : sakeViewModel.sakeDetails == null
              ? Center(child: Text('No details available'))
              : Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID: ${sakeViewModel.sakeDetails?.id}',
                          style: TextStyle(fontSize: 24)),
                      SizedBox(height: 8),
                      Text('Name: ${sakeViewModel.sakeDetails?.brand}',
                          style: TextStyle(fontSize: 24)),
                      SizedBox(height: 8),
                      Text('Brewery: ${sakeViewModel.sakeDetails?.brewery}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text('Area: ${sakeViewModel.sakeDetails?.area}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text('Flavor Chart: ${sakeViewModel.sakeDetails?.chart}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text(
                          'Tags: ${sakeViewModel.sakeDetails?.tags?.tagIds.join(", ")}',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
    );
  }
}
