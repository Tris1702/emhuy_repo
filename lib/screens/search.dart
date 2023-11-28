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
    CulturalHeritage(
      name: 'Thành Cổ Loa',
      description: 'Nơi thờ vua An Dương Vương',
      imageUrl: 'https://ik.imagekit.io/tvlk/blog/2022/09/thanh-co-loa-1.jpg?tr=dpr-2,w-675', // URL hình ảnh thực tế
      address: 'Hà Nội',
    ),
    CulturalHeritage(
      name: 'Đền Phủ Đổng',
      description: 'Nơi tôn vinh và thờ vị tướng Phù Đổng Thiên Vương',
      imageUrl: 'data:image/jpeg;base64,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', // URL hình ảnh thực tế
      address: 'Hà Nội',
    ),
    CulturalHeritage(
      name: 'Cố đô Hoa Lư',
      description: 'kinh đô đầu tiên của nước Việt Nam',
      imageUrl: 'data:image/jpeg;base64,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', // URL hình ảnh thực tế
      address: 'Ninh Bình',
    ),
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
