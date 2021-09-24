import 'package:equatable/equatable.dart';

import 'model.dart';

class Post extends Equatable {
  final String username;
  final String profile;
  final String imageUrl;
  final String caption;
  final String location;
  final DateTime createdAt;
  final List<Like> likes;
  final List<Comment> comments;

  Post({
    required this.username,
    required this.profile,
    required this.imageUrl,
    required this.caption,
    required this.location,
    required this.createdAt,
    required this.likes,
    required this.comments,
  });

  @override
  List<Object> get props {
    return [
      username,
      profile,
      imageUrl,
      caption,
      location,
      createdAt,
      likes,
      comments,
    ];
  }

  @override
  bool get stringify => true;

  @override
  String toString() {
    return 'Post(username: $username, imageUrl: $imageUrl, caption: $caption, location: $location, createdAt: $createdAt, likes: $likes, comments: $comments)';
  }
}
