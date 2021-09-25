// TODO: Create some dummy data

import 'model.dart';

List<Account> accounts = [
  Account(
    profile:
        "https://www.celebs-now.com/article/rock-stars/slash-net-worth.jpg",
    username: "nanda_amanta",
    bio: "bodo amat",
    followersCount: 9000,
    followingCount: 200,
    postCount: 1,
  ),
  Account(
    username: "mahendra67",
    profile:
        "https://supermusic.id/images/posts/6299_billie_joe_armstrong_siap_cover_lagu_baru_setiap_hari_senin_large.jpg",
    bio: "bodo amat juga",
    followersCount: 8,
    followingCount: 1,
    postCount: 1,
  ),
];

List<Post> posts = [
  Post(
    username: accounts[0].username,
    profile: accounts[0].profile,
    imageUrl:
        "https://asset.kompas.com/crops/ElvA2xM2BqL5m6xYlIfEWnULXow=/102x0:886x523/750x500/data/photo/2019/07/22/5d34bc874c625.jpg",
    caption: "ini singa",
    location: "Bali",
    createdAt: DateTime.now(),
    likes: [
      Like(
        username: accounts[1].username,
        profilePicUrl: accounts[1].profile,
      ),
    ],
    comments: [
      Comment(
        username: accounts[1].username,
        profilePicUrl: accounts[1].profile,
        comments: "Wahh singa lucu",
        likes: [
          Like(
            username: accounts[0].username,
            profilePicUrl:
                "https://www.celebs-now.com/article/rock-stars/slash-net-worth.jpg",
          ),
        ],
      ),
      Comment(
        username: accounts[0].username,
        profilePicUrl:
            "https://www.celebs-now.com/article/rock-stars/slash-net-worth.jpg",
        comments: "hehe iyaa bener mahen, ini singa",
        likes: [
          Like(
            username: accounts[1].username,
            profilePicUrl: accounts[1].profile,
          ),
        ],
      ),
    ],
  ),
  Post(
    username: accounts[1].username,
    profile: accounts[1].profile,
    imageUrl:
        "https://asset.kompas.com/crops/AOqycoSV_pH5eU51rYStWW_zVFY=/1x0:1000x666/750x500/data/photo/2019/11/04/5dbfff829ebe6.jpg",
    caption: "imut",
    location: "Bali",
    createdAt: DateTime.now(),
    likes: [
      Like(
        username: accounts[1].username,
        profilePicUrl: accounts[1].profile,
      ),
      Like(
        username: accounts[0].username,
        profilePicUrl: accounts[0].profile,
      ),
    ],
    comments: [
      Comment(
        username: accounts[0].username,
        profilePicUrl: accounts[0].profile,
        comments: "wahh kura kura",
        likes: [
          Like(
            username: accounts[0].username,
            profilePicUrl:
                accounts[0].profile,
          ),
        ],
      ),
      Comment(
        username: accounts[1].username,
        profilePicUrl:
            accounts[1].profile,
        comments: "pala kau kura kura, kucing ini",
        likes: [
          Like(
            username: accounts[1].username,
            profilePicUrl: accounts[1].profile,
          ),
        ],
      ),
    ],
  ),
];
