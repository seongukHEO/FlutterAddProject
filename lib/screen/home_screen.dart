import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../user_chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ]
      ),
    );
  }
}


class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //수평적으로 움직이는 스크롤
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => UserStory(userName: "User $index"))
      ),
    );
  }
}

class UserStory extends StatelessWidget {

  final String userName;

  const UserStory({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(userName)
        ],
      ),
    );
  }
}

//이게 데이터 클래스
class FeedData{
  final String userName;
  final int likeCount;
  final String content;

  FeedData({required this.userName, required this.likeCount, required this.content});
}


final feedDataList = [
  FeedData(userName: "User1", likeCount: 50, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User2", likeCount: 40, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User3", likeCount: 60, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User4", likeCount: 70, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User5", likeCount: 80, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User6", likeCount: 80, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User7", likeCount: 90, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User8", likeCount: 90, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User9", likeCount: 10, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User10", likeCount: 20, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User11", likeCount: 30, content: "오늘 회의는 ㅈ같았다"),
  FeedData(userName: "User12", likeCount: 40, content: "오늘 회의는 ㅈ같았다"),

];


class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //스크롤이 내부에 2개가 있다보니 영역을 찾을 수 없다
      //그러므로 스크롤이 불가능하게 해야한다
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: feedDataList.length,
        itemBuilder: (c, i) {
          return FeedItem(feedData: feedDataList[i],);
        }
    );
  }
}

class FeedItem extends StatelessWidget {

  final FeedData feedData;

  const FeedItem({required this.feedData,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40, width: 40, decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300
                  ),
                  ),
                  SizedBox(width: 8,),
                  Text(feedData.userName)
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 500,
          color: Colors.indigo.shade300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.favorite_outline)
                ),
                IconButton(
                    onPressed: (){

                    },
                    icon: Icon(CupertinoIcons.chat_bubble)
                ),
                IconButton(
                    onPressed: (){

                    },
                    icon: Icon(CupertinoIcons.paperplane)
                ),
              ],
            ),
            IconButton(
                onPressed: (){

                },
                icon: Icon(CupertinoIcons.bookmark)
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text("좋아요 ${feedData.likeCount}", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: RichText(text: TextSpan(
            children: [
              TextSpan(text: feedData.userName, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: feedData.content),
            ],
            style: TextStyle(color: Colors.black)
          )),
        )
      ],
    );
  }
}



