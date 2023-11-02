class PostModel {
  String postedBy;
  String postImage;
  int likes;

  List<String> hashTagh;
  String content;

  PostModel({
    required this.postedBy,
    required this.postImage,
    required this.likes,
    required this.hashTagh,
    required this.content,
  });
}

List<PostModel> postList = [
  PostModel(
      postedBy: 'vann',
      postImage:
          'https://images.pexels.com/photos/4201333/pexels-photo-4201333.jpeg?auto=compress&cs=tinysrgb&w=400',
      likes: 1900,
      hashTagh: ['#Photographylove'],
      content: 'love for photography never ends'),
  PostModel(
      postedBy: '_carlos08',
      postImage:
          'https://images.pexels.com/photos/3342739/pexels-photo-3342739.jpeg?auto=compress&cs=tinysrgb&w=400',
      likes: 2500,
      hashTagh: ['#Belive'],
      content: 'Nothhiiinngggg'),
  PostModel(
      postedBy: 'billy_roberts',
      postImage:
          'https://images.pexels.com/photos/4201333/pexels-photo-4201333.jpeg?auto=compress&cs=tinysrgb&w=400',
      likes: 1900,
      hashTagh: ['#Photographylove'],
      content: 'love for photography never ends'),
  PostModel(
      postedBy: 'rahul_sharma_11',
      postImage:
          'https://images.pexels.com/photos/4201333/pexels-photo-4201333.jpeg?auto=compress&cs=tinysrgb&w=400',
      likes: 1900,
      hashTagh: ['#Photographylove'],
      content: 'love for photography never ends'),
  PostModel(
      postedBy: 'bijosh',
      postImage:
          'https://images.pexels.com/photos/4201333/pexels-photo-4201333.jpeg?auto=compress&cs=tinysrgb&w=400',
      likes: 1900,
      hashTagh: ['#Photographylove'],
      content: 'love for photography never ends'),
];
