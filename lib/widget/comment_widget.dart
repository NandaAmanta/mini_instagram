import 'package:flutter/material.dart';
import 'package:instagram/model/comment.dart';
import 'package:instagram/model/model.dart';

class CommentWidget extends StatefulWidget {
  final post;

  const CommentWidget({Key? key, this.post}) : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState(post: post);
}

class _CommentWidgetState extends State<CommentWidget> {
  final post;
  _CommentWidgetState({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Comments",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          image: NetworkImage(post.profile))),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                post.username,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(child: Text(post.caption))
            ],
          )
        ],
      ),
    );
  }
}
