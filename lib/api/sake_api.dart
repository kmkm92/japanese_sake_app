import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Client;
import '../models/api_response.dart';

const String baseUrl = 'https://muro.sakenowa.com/sakenowa-data/api';

class SakeApi {
  final Client client;

  SakeApi({Client? client}) : client = client ?? http.Client();

  Future<List<Brand>> getSakeList({int page = 1, int perPage = 20}) async {
    try {
      final response = await client
          .get(Uri.parse('$baseUrl/brands?page=$page&per_page=$perPage'))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body)['brands'];
        return data.map((e) => Brand.fromJson(e)).toList();
      } else {
        print(
            'Failed to load sake list: ${response.statusCode} - ${response.body}');
        throw Exception('Failed to load sake list');
      }
    } catch (e) {
      print('Exception occurred: $e');
      throw Exception('Failed to load sake list');
    }
  }

  Future<List<Area>> fetchAreas() async {
    final response = await http.get(Uri.parse('$baseUrl/areas'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['areas'] != null) {
        return (data['areas'] as List)
            .map((json) => Area.fromJson(json))
            .toList();
      } else {
        throw Exception('Areas data is null');
      }
    } else {
      throw Exception('Failed to load areas');
    }
  }

  Future<List<Brand>> fetchBrands() async {
    final response = await http.get(Uri.parse('$baseUrl/brands'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['brands'] != null) {
        return (data['brands'] as List)
            .map((json) => Brand.fromJson(json))
            .toList();
      } else {
        throw Exception('Brands data is null');
      }
    } else {
      throw Exception('Failed to load brands');
    }
  }

  Future<List<Brewery>> fetchBreweries() async {
    final response = await http.get(Uri.parse('$baseUrl/breweries'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['breweries'] != null) {
        return (data['breweries'] as List)
            .map((json) => Brewery.fromJson(json))
            .toList();
      } else {
        throw Exception('Breweries data is null');
      }
    } else {
      throw Exception('Failed to load breweries');
    }
  }

  Future<List<FlavorChart>> fetchFlavorCharts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/flavor-charts'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        print('API Response: $data');
        if (data.containsKey('flavorCharts') && data['flavorCharts'] != null) {
          // List<dynamic>をList<Map<String, dynamic>>にキャストしてからパースする
          final flavorCharts = (data['flavorCharts'] as List<dynamic>)
              .map((json) => FlavorChart.fromJson(json as Map<String, dynamic>))
              .toList();
          print('flavorCharts: $flavorCharts');
          return flavorCharts;
        } else {
          throw Exception('FlavorChart data is null');
        }
      } else {
        throw Exception('Failed to load flavor charts');
      }
    } catch (e) {
      print('Exception occurred: $e');
      throw Exception('Failed to load flavor charts');
    }
  }

  Future<List<FlavorTag>> fetchFlavorTags() async {
    final response = await http.get(Uri.parse('$baseUrl/flavor-tags'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['tags'] != null) {
        return (data['tags'] as List<dynamic>)
            .map((json) => FlavorTag.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('FlavorTags data is null');
      }
    } else {
      throw Exception('Failed to load flavor tags');
    }
  }

  Future<List<BrandFlavorTag>> fetchBrandFlavorTags() async {
    final response = await http.get(Uri.parse('$baseUrl/brand-flavor-tags'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['flavorTags'] != null) {
        return (data['flavorTags'] as List)
            .map((json) => BrandFlavorTag.fromJson(json))
            .toList();
      } else {
        throw Exception('BrandFlavorTags data is null');
      }
    } else {
      throw Exception('Failed to load brand flavor tags');
    }
  }
  // Future<Brand> getSakeDetails(int sakeId) async {
  //   try {
  //     final response = await client
  //         .get(Uri.parse('$baseUrl/brands'))
  //         .timeout(const Duration(seconds: 10));

  //     if (response.statusCode == 200) {
  //       // print(json.decode(response.body));
  //       return Brand.fromJson(json
  //           .decode(response.body)
  //           .firstWhere((brand) => brand['id'] == sakeId));
  //     } else {
  //       print(
  //           'Failed to load sake details: ${response.statusCode} - ${response.body}');
  //       throw Exception('Failed to load sake details');
  //     }
  //   } catch (e) {
  //     print('Exception occurred: $e');
  //     throw Exception('Failed to load sake details');
  //   }
  // }

  // Future<List<Brand>> getSakeToList() async {
  //   final response = await http.get(Uri.parse('$baseUrl/brands'));

  //   if (response.statusCode == 200) {
  //     List<dynamic> data = json.decode(response.body)['brands'];
  //     return data.map((e) => Brand.fromJson(e)).toList();
  //   } else {
  //     throw Exception('Failed to load sake list');
  //   }
  // }
}
