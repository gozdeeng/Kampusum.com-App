import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> profileImages = [
    'assets/images/person1.png',
    'assets/images/person2.png',
    'assets/images/person3.png',
    'assets/images/person4.png',
    'assets/images/person5.png',
    'assets/images/person6.png',
    'assets/images/person7.png',
    'assets/images/person8.png',
  ];
  List<String> posts = [
    'assets/images/post1.png',
    'assets/images/post2.png',
    'assets/images/post3.png',
    'assets/images/post4.png',
    'assets/images/post5.png',
    'assets/images/post6.png',
    'assets/images/post7.png',
    'assets/images/post8.png',
  ];

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 30,
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: const Color(0xFF24b44c),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(profileImages[index]),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Profile Name',
                            style: TextStyle(fontSize: 13, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: const Color(0xFF24b44c),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(profileImages[index]),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                          const Text(
                            'Profile Name',
                            style: TextStyle(fontSize: 11, color: Colors.black54),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert_outlined,
                                size: 16,
                              ))
                        ],
                      ),
                      Container(
                        width: double.infinity, // Set to your desired width
                        height: 250, // Set to your desired height
                        child: Image.asset(posts[index]),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.send_outlined)),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_outline)),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: 'liked by '),
                                  TextSpan(text: 'Profile Name ', style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'and  '),
                                  TextSpan(text: 'others...', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: 'Profile Name ', style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'This school is very good, i wish, win this university.'),
                                ],
                              ),
                            ),
                            const Text('View all 12 comments', style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
