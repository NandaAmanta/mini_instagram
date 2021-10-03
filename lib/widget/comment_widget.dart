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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.send))],
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
          Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.15, color: Colors.grey))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                RichText(text:TextSpan(
                  text:post.username,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
                ,
                Text(
                  post.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(child: Text(post.caption))
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, ind) {
              return Container(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.black),
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                image: NetworkImage(
                                    post.comments[ind].profilePicUrl))),
                      ),
                    ),
                    Text(
                      post.comments[ind].username,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Text(" ${post.comments[ind].comments}"))
                    ,
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 15,color: Colors.grey,))
                  ],
                ),
              );
            },
            itemCount: post.comments.length,
          )
        ],
      ),
    );
  }
}
