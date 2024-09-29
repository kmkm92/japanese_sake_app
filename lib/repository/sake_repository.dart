import 'package:japanese_sake_app/models/brand_detail.dart';

import '../api/sake_api.dart';
import '../models/api_response.dart';

class SakeRepository {
  final SakeApi api;

  SakeRepository(this.api);

  Future<List<Brand>> fetchSakeList({int page = 1, int perPage = 20}) {
    return api.getSakeList(page: page, perPage: perPage);
  }

  Future<BrandDetail?> fetchBrandDetail(int brandId) async {
    final brands = await api.fetchBrands();
    final brandMap = {for (var brand in brands) brand.id: brand};
    final brand = brandMap[brandId];

    final breweries = await api.fetchBreweries();
    final breweryMap = {for (var brewery in breweries) brewery.id: brewery};
    final brewery = breweryMap[brand?.breweryId];

    final areas = await api.fetchAreas();
    final areaMap = {for (var area in areas) area.id: area};
    final area = areaMap[brewery?.areaId];

    final flavorCharts = await api.fetchFlavorCharts();
    final flavorChartMap = {
      for (var chart in flavorCharts) chart.brandId: chart
    };
    final chart = flavorChartMap[brand?.id] ?? FlavorChart(brandId: brand?.id);

    final brandFlavorTags = await api.fetchBrandFlavorTags();
    final brandFlavorTagMap = {
      for (var tag in brandFlavorTags) tag.brandId: tag
    };
    final brandFlavorTag = brandFlavorTagMap[brand?.id];

    final flavorTags = await api.fetchFlavorTags();
    final flavorTagMap = {for (var tag in flavorTags) tag.id: tag};

    final tags = brandFlavorTag?.tagIds
            .map((id) => flavorTagMap[id]?.tag)
            .where((name) => name != null)
            .map((name) => name as String)
            .toList() ??
        [];

    return BrandDetail(
      id: brand?.id ?? 0,
      brand: brand?.name ?? '',
      brewery: brewery?.name ?? '',
      area: area?.name ?? '',
      chart: chart,
      tags: BrandFlavorTag(
          brandId: brand?.id ?? 0,
          tagIds: brandFlavorTag?.tagIds ?? [],
          tagNames: tags),
    );
  }
}
