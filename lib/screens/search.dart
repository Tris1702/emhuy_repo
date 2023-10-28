import 'package:flutter/material.dart';

class CulturalHeritage {
  final String name;
  final String description;
  final String imageUrl;
  final String address;

  CulturalHeritage({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.address,
  });
}

class SearchPage extends StatefulWidget {
  static const title = 'Search';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<CulturalHeritage> allItems = [
    CulturalHeritage(
      name: 'Chùa Tam Chúc',
      description: 'Ngôi chùa lớn nhất Đông Nam Á',
      imageUrl: 'https://ik.imagekit.io/tvlk/blog/2023/05/chua-tam-chuc-12.jpg?tr=dpr-2,w-675', // URL hình ảnh thực tế
      address: 'Hà Nam',
    ),
    CulturalHeritage(
      name: 'Quốc Tử Giám',
      description: 'Trường Đại học đầu tiên của Việt Nam',
      imageUrl: 'https://ik.imagekit.io/tvlk/blog/2022/08/van-mieu-quoc-tu-giam-1-1024x683.jpg?tr=dpr-2,w-675', // URL hình ảnh thực tế
      address: 'Hà Nội',
    ),
    // Thêm các di tích khác vào danh sách với URL hình ảnh thực tế.
  ];

  List<CulturalHeritage> searchResults = [];
  final TextEditingController _searchController = TextEditingController();

  void onSearchTextChanged(String query) {
    setState(() {
      searchResults = allItems
          .where((heritage) =>
      heritage.name.toLowerCase().contains(query.toLowerCase()) ||
          heritage.description.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    onSearchTextChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SearchPage.title),
        actions: [
          IconButton(
            icon: Icon(Icons.clear), // Biểu tượng "X" để xóa nội dung tìm kiếm
            onPressed: clearSearch,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
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
                final culturalHeritage = searchResults[index];
                return ListTile(
                  leading: Image.network(culturalHeritage.imageUrl),
                  title: Text(culturalHeritage.name),
                  subtitle: Text(culturalHeritage.address),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
