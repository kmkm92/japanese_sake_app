import 'package:flutter/material.dart';
import 'package:japanese_sake_app/models/brand_detail.dart';

class AddSakeScreen extends StatelessWidget {
  const AddSakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _brandController = TextEditingController();
    final _breweryController = TextEditingController();
    final _areaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('新規日本酒追加'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '酒蔵を入力してください';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _areaController,
                decoration: const InputDecoration(labelText: '地域'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '地域を入力してください';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final newSake = BrandDetail(
                      id: 0,
                      brand: _brandController.text,
                      brewery: _breweryController.text,
                      area: _areaController.text,
                    );
                    // 新規日本酒を追加する処理
                    Navigator.pop(context, newSake);
                  }
                },
                child: const Text('追加'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
