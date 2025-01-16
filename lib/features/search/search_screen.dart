import 'package:flutter/material.dart';
// import 'widgets/search_bar.dart';
// import 'widgets/search_results.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _query = '';

  void _updateQuery(String query) {
    setState(() {
      _query = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Column(
        children: [
          // SearchBar(onSubmitted: _updateQuery),
          // SearchResults(query: _query),
          Text("Search results")
        ],
      ),
    );
  }
}
