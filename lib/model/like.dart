import 'package:equatable/equatable.dart';

class Like extends Equatable {
  final String username;
  final String profilePicUrl;
  Like({
    required this.username,
    required this.profilePicUrl,
  });

  @override
  List<Object> get props => [username, profilePicUrl];

  @override
  bool get stringify => true;

  @override
  String toString() =>
      'Like(username: $username, profilePicUrl: $profilePicUrl)';
}
