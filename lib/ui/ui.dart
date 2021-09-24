import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/model/dummies_data.dart';
import 'package:instagram/widget/post_widget.dart';

class LayOut extends StatefulWidget {
  const LayOut({Key? key}) : super(key: key);

  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.photo_camera_back_outlined,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shop,
                  size: 30,
                ),
              ),
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
                                "https://www.celebs-now.com/article/rock-stars/slash-net-worth.jpg"))),
                  ))
            ],
          ),
        )),
        appBar: AppBar(
          title: Image.asset(
            "assets/1b47f9d0e595.png",
            scale: 2,
          ),
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 0.2,
            ),
            preferredSize: Size.fromHeight(1.0),
          ),
          elevation: 0,
          actions: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.favorite_outline, color: Colors.black, size: 30),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.message_outlined, color: Colors.black, size: 30),
          ],
        ),
        body: PostWidget());
  }
}
