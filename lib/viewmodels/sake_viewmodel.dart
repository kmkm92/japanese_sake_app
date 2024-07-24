import 'package:flutter/material.dart';
import 'package:japanese_sake_app/models/brand_detail.dart';
import '../models/api_response.dart';
import '../repository/sake_repository.dart';

class SakeViewModel extends ChangeNotifier {
  final SakeRepository repository;

  SakeViewModel(this.repository);

  List<Brand> _sakeList = [];
  List<Brand> get sakeList => _sakeList;

  BrandDetail? _sakeDetails;
  BrandDetail? get sakeDetails => _sakeDetails;

  bool _isFetching = false;
  bool get isFetching => _isFetching;

  int _currentPage = 1;
  final int _perPage = 20;

  Future<void> fetchSakeList() async {
    if (_isFetching) return;
    _isFetching = true;
    notifyListeners();
    try {
      List<Brand> newSakeList =
          await repository.fetchSakeList(page: _currentPage, perPage: _perPage);
      _sakeList.addAll(newSakeList);
      _currentPage++;
    } catch (e) {
      print('Error fetching sake list: $e');
    } finally {
      _isFetching = false;
      notifyListeners();
    }
  }

  // void getSakeDetailsById(int sakeId) {
  //   _sakeDetails = _sakeList
  //       .firstWhere((sake) => sake.id == sakeId /* , orElse: () => null */);
  //   notifyListeners();
  // }

  Future<void> fetchSakeDetails(int sakeId) async {
    try {
      _sakeDetails = await repository.fetchBrandDetail(sakeId);
      notifyListeners();
    } catch (e) {
      print('Error fetching sake details: $e');
    }
  }
  // Future<void> fetchSakeDetails(int sakeId) async {
  //   try {
  //     _sakeDetails = await repository.fetchSakeDetails(sakeId);
  //     notifyListeners();
  //   } catch (e) {
  //     print('Error fetching sake details: $e');
  //   }
  // }
}