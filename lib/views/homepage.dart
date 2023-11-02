import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/postmodel.dart';
import '../models/profilemodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  AppBar customAppBar() {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: Colors.grey.shade100,
      elevation: 0,
      title: Text('instagram',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.heart,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
            ))
      ],
    );
  }

  Padding topTitleWidget() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("Stories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              topTitleWidget(),
              ProfileListWidget(),
              const Divider(
                thickness: 2,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: postList.length,
                  itemBuilder: (_, index) => PostWidget(
                        subtitleStyle: const TextStyle(fontSize: 20),
                        postModel: postList[index],
                      ))
            ]),
          ),
        ));
  }

  SingleChildScrollView ProfileListWidget() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const YourStart(),
            for (int i = 0; i < profilemodels.length; i++) ...{
              ProfileWidget(
                  profileName: profilemodels[i].profileName,
                  imagePath: profilemodels[i].imagePath)
            }
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.subtitleStyle,
    required this.postModel,
  }) : super(key: key);

  final TextStyle subtitleStyle;

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InstaGradientWidget(
                imagePath: profilemodels[0].imagePath,
                size: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  postModel.postedBy,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(postModel.postImage),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.circle_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_outline),
              ),
            ],
          ),
          Text(
            '${postModel.likes} Likes',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                postModel.content,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '#${postModel.hashTagh[0]}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class YourStart extends StatelessWidget {
  const YourStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            for (int i = 0; i < profilemodels.length; i++)
              const CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/7163731/pexels-photo-7163731.jpeg?auto=compress&cs=tinysrgb&w=400'),
              ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Material(
                  borderRadius: BorderRadius.circular(50),
                  child: const Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                    size: 18,
                  )),
            ),
          ],
        ),
        const Text(
          'Your story',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String profileName;
  final String imagePath;
  const ProfileWidget({
    Key? key,
    required this.profileName,
    required this.imagePath,
  }) : super(key: key);

  final TextStyle subtitleStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InstaGradientWidget(
            imagePath: imagePath,
            size: 50,
          ),
          Text(
            profileName,
            style: subtitleStyle,
          )
        ],
      ),
    );
  }
}

class InstaGradientWidget extends StatelessWidget {
  const InstaGradientWidget({
    super.key,
    required this.imagePath,
    this.size = 60,
  });
  final double size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xfff7b553),
                Color(0xffef732b),
                Color(0xff5f47b9),
                Color(0xff9437b9),
              ])),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: ClipOval(child: Image.network(imagePath, height: size)),
      ),
    );
  }
}
