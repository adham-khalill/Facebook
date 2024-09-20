import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> storyImages = [
    'lib/Images/Stories/Story_1.png',
    'lib/Images/Stories/Story_2.png',
    'lib/Images/Stories/Story_3.png',
    'lib/Images/Stories/Story_4.png',
  ];

  final List<String> postIcons = [
    'lib/Images/Icons/Like.png',
    'lib/Images/Icons/Comment.png',
    'lib/Images/Icons/Share.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStorySection(),
            _buildPostSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildStorySection() {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          final randomIndex = Random().nextInt(storyImages.length);
          final randomStoryImage = storyImages[randomIndex];

          return Stack(
            children: [
              Container(
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(randomStoryImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: Text(
                  'Owner',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black45,
                    fontSize: 12,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('lib/Images/Logos/Profile.png'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPostSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return _buildPostCard();
      },
    );
  }

  Widget _buildPostCard() {
    final randomLikes = Random().nextInt(91) + 10;
    final randomComments = Random().nextInt(20) + 1;
    final randomHours = Random().nextInt(22) + 1;
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/Images/Logos/Profile.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Owner', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('$randomHours h ago'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Hellloooo'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      postIcons[0], // Like icon
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text('$randomLikes'),
                  ],
                ),
                Text('$randomComments Comments'),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset(
                      postIcons[0], // Like icon
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text('Like'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      postIcons[1], // Comment icon
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text('Comment'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      postIcons[2], // Share icon
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 5),
                    Text('Share'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
