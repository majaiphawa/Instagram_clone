import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InstagramUser {
  final String username;
  final String fullName;
  final String profilePictureUrl;

  InstagramUser(
      {required this.username,
      required this.fullName,
      required this.profilePictureUrl});
}

class WhoFollowedPage extends StatefulWidget {
  const WhoFollowedPage({super.key});

  @override
  _WhoFollowedPageState createState() => _WhoFollowedPageState();
}

class _WhoFollowedPageState extends State<WhoFollowedPage> {
  List<InstagramUser> followers = [
    InstagramUser(
      username: 'abishek_01',
      fullName: 'Abishek',
      profilePictureUrl:
          'https://images.pexels.com/photos/7128985/pexels-photo-7128985.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: '_rahulvs',
      fullName: 'Rahul raj',
      profilePictureUrl:
          'https://images.pexels.com/photos/5641937/pexels-photo-5641937.jpeg?auto=compress&cs=tinysrgb&w=400',
    ),
    InstagramUser(
      username: 'bijeshhhh',
      fullName: 'Bjesh',
      profilePictureUrl:
          'https://images.pexels.com/photos/3414187/pexels-photo-3414187.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: '_carlos_',
      fullName: 'CL',
      profilePictureUrl:
          'https://images.pexels.com/photos/956722/pexels-photo-956722.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: 'meghhhh',
      fullName: 'Meghna',
      profilePictureUrl:
          'https://images.pexels.com/photos/7686313/pexels-photo-7686313.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: 'jarvy_randel',
      fullName: 'Jarvy',
      profilePictureUrl:
          'https://images.pexels.com/photos/7541439/pexels-photo-7541439.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: '_justinsamuel10',
      fullName: 'Justin',
      profilePictureUrl:
          'https://images.pexels.com/photos/8113888/pexels-photo-8113888.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
    InstagramUser(
      username: 'rohit_samson',
      fullName: 'Rohit',
      profilePictureUrl:
          'https://images.pexels.com/photos/4563258/pexels-photo-4563258.jpeg?auto=compress&cs=tinysrgb&w=600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Who Followed You',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: ListView.builder(
        itemCount: followers.length,
        itemBuilder: (context, index) {
          final follower = followers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(follower.profilePictureUrl),
            ),
            title: Text(follower.username),
            subtitle: Text(follower.fullName),
          );
        },
      ),
    );
  }
}
