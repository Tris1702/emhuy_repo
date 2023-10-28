import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const title = 'Search';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> allItems = [
    'Di tích 1',
    'Di tích 2',
    'Di tích 3',
    'Di tích 4',
    'Di tích 5',
  ];

  List<String> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SearchPage.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (query) {
                onSearchTextChanged(query);
              },
              decoration: InputDecoration(
                labelText: 'Tìm kiếm',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onSearchTextChanged(String query) {
    setState(() {
      searchResults = allItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
}
