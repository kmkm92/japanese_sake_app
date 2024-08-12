import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';

class AddSakeScreen extends ConsumerStatefulWidget {
  const AddSakeScreen({Key? key}) : super(key: key);

  @override
  _AddSakeScreenState createState() => _AddSakeScreenState();
}

class _AddSakeScreenState extends ConsumerState<AddSakeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _brandController = TextEditingController();
  final _breweryController = TextEditingController();
  final _areaController = TextEditingController();
  final _memoController = TextEditingController();

  double _gorgeousValue = 0;
  double _mellowValue = 0;
  double _profoundValue = 0;
  double _clamValue = 0;
  double _dryValue = 0;
  double _nimbleValue = 0;

  @override
  Widget build(BuildContext context) {
    final myBrandsNotifier = ref.watch(myBrandsNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('新規日本酒追加'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _brandController,
                  decoration: const InputDecoration(labelText: 'ブランド名'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ブランド名を入力してください';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _breweryController,
                  decoration: const InputDecoration(labelText: '酒蔵'),
                ),
                TextFormField(
                  controller: _areaController,
                  decoration: const InputDecoration(labelText: '地域'),
                ),
                Slider(
                  value: _gorgeousValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _gorgeousValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _gorgeousValue = value;
                    });
                  },
                ),
                Slider(
                  value: _mellowValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _mellowValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _mellowValue = value;
                    });
                  },
                ),
                Slider(
                  value: _profoundValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _profoundValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _profoundValue = value;
                    });
                  },
                ),
                Slider(
                  value: _clamValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _clamValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _clamValue = value;
                    });
                  },
                ),
                Slider(
                  value: _dryValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _dryValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _dryValue = value;
                    });
                  },
                ),
                Slider(
                  value: _nimbleValue,
                  min: 0,
                  max: 1,
                  divisions: 1000,
                  label: _nimbleValue.toString(),
                  onChanged: (double value) {
                    setState(() {
                      _nimbleValue = value;
                    });
                  },
                ),
                TextFormField(
                  controller: _memoController,
                  decoration: const InputDecoration(labelText: 'メモ'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final newSake = MyBrandsCompanion(
                        brand: drift.Value(_brandController.text),
                        brewery: drift.Value(_breweryController.text),
                        area: drift.Value(_areaController.text),
                        gorgeous: drift.Value(_gorgeousValue),
                        mellow: drift.Value(_mellowValue),
                        profound: drift.Value(_profoundValue),
                        clam: drift.Value(_clamValue),
                        dry: drift.Value(_dryValue),
                        nimble: drift.Value(_nimbleValue),
                        memo: drift.Value(_memoController.text),
                      );
                      await myBrandsNotifier.addBrand(newSake);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('追加'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
