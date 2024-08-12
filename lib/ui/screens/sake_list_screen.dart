import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/sake_providers.dart';
import '../widgets/sake_list_item.dart';
import 'sake_details_screen.dart';

class SakeListScreen extends ConsumerStatefulWidget {
  @override
  _SakeListScreenState createState() => _SakeListScreenState();
}

class _SakeListScreenState extends ConsumerState<SakeListScreen> {
  final ScrollController _scrollController = ScrollController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    // 初回データ取得
    Future.microtask(
        () => ref.read(sakeViewModelProvider).fetchSakeList(clearList: true));
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // スクロールがリストの末尾に達したときに次のページを読み込む
      ref.read(sakeViewModelProvider).fetchSakeList();
      print('road');
    }
  }

  @override
  Widget build(BuildContext context) {
    final sakeViewModel = ref.watch(sakeViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sake List'),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: '検索',
                hintText: '日本酒名を入力',
                prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.5), width: 1.0),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
              style: TextStyle(fontSize: 16.0),
              onChanged: (query) {
                setState(() {
                  _searchQuery = query;
                });
                ref.read(sakeViewModelProvider).fetchSakeList(clearList: true);
              },
            ),
          ),
          Expanded(
            child: Consumer(
              builder: (context, watch, child) {
                final sakeList = sakeViewModel.sakeList.where((sake) {
                  return sake.name
                      .toLowerCase()
                      .contains(_searchQuery.toLowerCase());
                }).toList();
                final isFetching = sakeViewModel.isFetching;

                if (sakeList.isEmpty && isFetching) {
                  return Center(child: CircularProgressIndicator());
                } else if (sakeList.isEmpty && !isFetching) {
                  return Center(child: Text('No sake available.'));
                }

                return ListView.builder(
                  controller: _scrollController,
                  itemCount: sakeList.length + (isFetching ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == sakeList.length) {
                      return Center(child: CircularProgressIndicator());
                    }
                    var sake = sakeList[index];
                    return SakeListItem(
                      sake: sake,
                      onTap: () {
                        sakeViewModel.fetchSakeDetails(sake.id);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SakeDetailsScreen(sakeId: sake.id),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
