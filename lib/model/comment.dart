import 'package:equatable/equatable.dart';

import 'like.dart';

class Comment extends Equatable {
  final String username;
  final String profilePicUrl;
  final String comments;
  final List<Like> likes;

  Comment({
    required this.username,
    required this.profilePicUrl,
    required this.comments,
    required this.likes,
  });

  @override
  List<Object> get props => [username, profilePicUrl, comments, likes];

  @override
  bool get stringify => true;

  @override
  String toString() {
    return 'Comment(username: $username, profilePicUrl: $profilePicUrl, comments: $comments, likes: $likes)';
  }
}
