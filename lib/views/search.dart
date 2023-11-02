import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  List<String> profileImages = [
    'https://images.pexels.com/photos/3586761/pexels-photo-3586761.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/4219102/pexels-photo-4219102.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/6941850/pexels-photo-6941850.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/4568137/pexels-photo-4568137.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/6337610/pexels-photo-6337610.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7128985/pexels-photo-7128985.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/191415/pexels-photo-191415.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/4288671/pexels-photo-4288671.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7015068/pexels-photo-7015068.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7579828/pexels-photo-7579828.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/7966114/pexels-photo-7966114.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3959984/pexels-photo-3959984.jpeg?auto=compress&cs=tinysrgb&w=600',
    ''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        title: const Text('Search',
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Recent Searches',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(
                  label: const Text('Travel'),
                  backgroundColor: Colors.grey[300],
                ),
                Chip(
                  label: const Text('Food'),
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                children: [
                  Container(
                    height: 80,
                    width: 110,
                    child: Image.network(
                        'https://images.pexels.com/photos/4491442/pexels-photo-4491442.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ),
                  Container(
                    child: Image.network(
                        'https://images.pexels.com/photos/3799324/pexels-photo-3799324.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: Image.network(
                        'https://images.pexels.com/photos/5490279/pexels-photo-5490279.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: Image.network(
                        'https://images.pexels.com/photos/6044250/pexels-photo-6044250.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  addSemanticIndexes: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  itemCount: profileImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Image.network(profileImages[index]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
