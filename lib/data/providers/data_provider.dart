import 'package:flutter/material.dart';

enum FilterType { day, month, year }

class DataProvider extends ChangeNotifier {
  FilterType _currentFilter = FilterType.day;

  // Mock data for different filters
  final Map<FilterType, Map<String, int>> _data = {
    FilterType.day: {
      'views': 120,
      'clicks': 30,
      'purchases': 10,
      'orders': 5,
       "accounts":5
    },
    FilterType.month: {
      'views': 4500,
      'clicks': 1200,
      'purchases': 300,
      'orders': 150,
      "accounts":50
    },
    FilterType.year: {
      'views': 54000,
      'clicks': 15000,
      'purchases': 4500,
      'orders': 3000,
       "accounts":1500
    },
  };

  FilterType get currentFilter => _currentFilter;

  Map<String, int> get filteredData => _data[_currentFilter]!;

  void setFilter(FilterType filter) {
    _currentFilter = filter;
    notifyListeners();
  }
}
