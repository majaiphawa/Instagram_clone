import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profileImages = [
      'https://images.pexels.com/photos/4491442/pexels-photo-4491442.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/6833459/pexels-photo-6833459.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/7163731/pexels-photo-7163731.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/6631855/pexels-photo-6631855.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/3414186/pexels-photo-3414186.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/9555098/pexels-photo-9555098.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/5641937/pexels-photo-5641937.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/6348137/pexels-photo-6348137.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/1587036/pexels-photo-1587036.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/7951186/pexels-photo-7951186.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/965879/pexels-photo-965879.jpeg?auto=compress&cs=tinysrgb&w=600',
      'https://images.pexels.com/photos/2872747/pexels-photo-2872747.jpeg?auto=compress&cs=tinysrgb&w=600',
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 253, 253, 253),
        title: const Text(
          'jai_vishnu',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/7163731/pexels-photo-7163731.jpeg?auto=compress&cs=tinysrgb&w=400',
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Kynjailang Phawa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'I dont follow the crowd; i create my owth path',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '123',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '456',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '789',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: GridView.builder(
              addSemanticIndexes: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: profileImages.length,
              itemBuilder: (context, index) {
                return Image.network(profileImages[index]);
              }),
        )
      ]),
    );
  }
}
