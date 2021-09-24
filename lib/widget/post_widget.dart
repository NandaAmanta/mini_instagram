import 'dart:ffi';

import 'package:flutter/material.dart';
import "package:instagram/model/dummies_data.dart";
import 'package:instagram/widget/comment_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: posts.length,
        itemBuilder: (_, index) {
          return Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 3),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.black),
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  image: NetworkImage(posts[index].profile))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        posts[index].username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
                Image.network(posts[index].imageUrl),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CommentWidget(
                                        post: posts[index],
                                      )));
                        },
                        icon: Icon(Icons.chat_bubble_outline, size: 30)),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send_outlined, size: 30)),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_border_outlined, size: 30)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        "${posts[index].likes.length} Suka",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        posts[index].username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(" ${posts[index].caption}")
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, ind) {
                    return Container(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Row(
                        children: [
                          Text(
                            posts[index].comments[ind].username,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(" ${posts[index].comments[ind].comments}"),
                        ],
                      ),
                    );
                  },
                  itemCount: posts[index].comments.length,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        "${posts[index].createdAt}",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }
}
