import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';

class AddSakeScreen extends ConsumerStatefulWidget {
  final MyBrand? brand;

  const AddSakeScreen({Key? key, this.brand}) : super(key: key);

  @override
  _AddSakeScreenState createState() => _AddSakeScreenState();
}

class _AddSakeScreenState extends ConsumerState<AddSakeScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _brandController;
  late TextEditingController _kanaController;
  late TextEditingController _breweryController;
  late TextEditingController _areaController;
  late TextEditingController _typeController;
  late TextEditingController _subNameController;
  double _gorgeousValue = 0;
  double _mellowValue = 0;
  double _profoundValue = 0;
  double _clamValue = 0;
  double _dryValue = 0;
  double _nimbleValue = 0;

  @override
  void initState() {
    super.initState();
    _brandController = TextEditingController(text: widget.brand?.brand ?? '');
    _kanaController = TextEditingController(text: widget.brand?.kana ?? '');
    _typeController = TextEditingController(text: widget.brand?.type ?? '');
    _subNameController =
        TextEditingController(text: widget.brand?.subName ?? '');
    _breweryController =
        TextEditingController(text: widget.brand?.brewery ?? '');
    _areaController = TextEditingController(text: widget.brand?.area ?? '');

    _gorgeousValue = widget.brand?.gorgeous ?? 0;
    _mellowValue = widget.brand?.mellow ?? 0;
    _profoundValue = widget.brand?.profound ?? 0;
    _clamValue = widget.brand?.clam ?? 0;
    _dryValue = widget.brand?.dry ?? 0;
    _nimbleValue = widget.brand?.nimble ?? 0;
  }

  @override
  void dispose() {
    _kanaController.dispose();
    _typeController.dispose();
    _subNameController.dispose();
    _brandController.dispose();
    _breweryController.dispose();
    _areaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myBrandsNotifier = ref.watch(myBrandsNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.brand == null ? '新規追加' : '編集'),
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
                  controller: _subNameController,
                  decoration: const InputDecoration(labelText: 'サブタイトル'),
                ),
                TextFormField(
                  controller: _kanaController,
                  decoration: const InputDecoration(labelText: 'ふりがな'),
                ),
                TextFormField(
                  controller: _typeController,
                  decoration: const InputDecoration(labelText: '日本酒の種類'),
                ),
                TextFormField(
                  controller: _breweryController,
                  decoration: const InputDecoration(labelText: '酒蔵'),
                ),
                TextFormField(
                  controller: _areaController,
                  decoration: const InputDecoration(labelText: '地域'),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('華やか'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('芳醇'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('重厚'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('穏やか'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('ドライ'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text('軽快'),
                    ),
                    Expanded(
                      child: Slider(
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
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final newSake = MyBrandsCompanion(
                        id: widget.brand != null
                            ? drift.Value(widget.brand!.id)
                            : const drift.Value.absent(),
                        brand: drift.Value(_brandController.text),
                        subName: drift.Value(_subNameController.text),
                        kana: drift.Value(_kanaController.text),
                        brewery: drift.Value(_breweryController.text),
                        area: drift.Value(_areaController.text),
                        gorgeous: drift.Value(_gorgeousValue),
                        mellow: drift.Value(_mellowValue),
                        profound: drift.Value(_profoundValue),
                        clam: drift.Value(_clamValue),
                        dry: drift.Value(_dryValue),
                        nimble: drift.Value(_nimbleValue),
                      );
                      if (widget.brand == null) {
                        await myBrandsNotifier.addBrand(newSake);
                      } else {
                        await myBrandsNotifier.updateBrand(newSake);
                        // await myBrandsNotifier.getBrandById(newSake.id.value);
                      }
                      Navigator.pop(context, true);
                    }
                  },
                  child: Text(widget.brand == null ? '追加' : '更新'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
