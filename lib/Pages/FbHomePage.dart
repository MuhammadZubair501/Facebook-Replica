import 'package:fbreplica/Pages/AddPostPanel.dart';
import 'package:fbreplica/Pages/PostPanel.dart';
import 'package:fbreplica/Pages/StoryPanel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fbreplica/Pages/IconsStack.dart';


List<Post> posts = [
  Post(
    NetworkImage(
      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
    ),
    'Werasat Hashmi',
    "Hello from Facebook Replica!",
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTboKQW7IB4OPfIpPT7OJqzjXRuRBJZKFuHDw&s',
      fit: BoxFit.cover,
    ),
  ),

  // Add more Post objects here
];

class FBHomePage extends StatefulWidget {
  const FBHomePage({super.key});

  @override
  State<FBHomePage> createState() => _FBHomePageState();
}

class _FBHomePageState extends State<FBHomePage> {
  int _selectedIndex = 0;

  // void addNewPost(Post post) {
  //   setState(() {
  //     posts.add(post);
  //   });
  
  // }
void RemovePost(index) {
    setState(() {
      posts.removeAt(index);
    });
  
  }
  List<Widget> _pages() {
  return [
   ListView.builder(
  itemCount: posts.length + 4,
  itemBuilder: (BuildContext context, int index) {
    if (index == 0) {
      return const SizedBox(height: 10);
    } else if (index == 1) {
      return PostPanel(context);
    } else if (index == 2) {
      return Column(
        children: [
          const SizedBox(height: 10),
          Container(color: Color.fromARGB(255, 212, 212, 212), height: 3),
          CreateStoryPanel(),
          const SizedBox(height: 10),
          Container(color: Color.fromARGB(255, 212, 212, 212), height: 3),
        ],
      );
    } else if (index >= 4) {
      final post = posts[index - 4];
      return PostPanelToAdd(context,
        post.profileImage,
        post.name,
        post.content,
        post.postImage,
        index-4
        
      );
    } else {
      return const SizedBox.shrink(); // for index == 3 (safe fallback)
    }
  },
),

    const Center(child: Text("Groups Page")),
    const Center(child: Text("Videos Page")),
    const Center(child: Text("Marketplace Page")),
    const Center(child: Text("Notifications Page")),
    const Center(child: Text("Menu Page")),
  ];
}


  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget CraateNavigationBtn(Widget icon, int index) {
    bool isSelected = _selectedIndex == index;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          color: isSelected
              ? const Color.fromARGB(255, 8, 102, 255)
              : Colors.black,
          onPressed: () => _onTabSelected(index),
          icon: icon,
        ),
        Container(
          height: 3,
          width: 50,
          color: isSelected
              ? const Color.fromARGB(255, 8, 102, 255)
              : Colors.transparent,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = _pages(); // Cache pages once per build

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'facebook',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 8, 102, 255),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.circlePlus),
            color: Colors.black,
            onPressed: () {
              // Add post action
            },
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            color: Colors.black,
            onPressed: () {
              // Search action
            },
          ),
          IconButton(
            icon: StackIcon(
              null,
              FontAwesomeIcons.facebookMessenger,
              "5",
              3,
              3,
            ),
            color: Colors.black,
            onPressed: () {
              // Open Messenger action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CraateNavigationBtn(const Icon(Icons.home_outlined, size: 30), 0),
              CraateNavigationBtn(
                const Icon(Icons.group_outlined, size: 30),
                1,
              ),
              CraateNavigationBtn(
                const Icon(Icons.video_camera_back_outlined, size: 30),
                2,
              ),
              CraateNavigationBtn(
                const Icon(Icons.store_mall_directory_outlined, size: 30),
                3,
              ),
              CraateNavigationBtn(
                StackIcon(null, Icons.notifications_none_outlined, "5", -2, 5),
                4,
              ),
              CraateNavigationBtn(const Icon(Icons.menu, size: 30), 5),
            ],
          ),
          Container(color: Colors.grey, height: 1),
          Expanded(child: pages[_selectedIndex]),
        ],
      ),
    );
  }
}

class Post {
  final ImageProvider profileImage;
  final String name;
  final String content;
  final Widget postImage;

  Post(this.profileImage, this.name, this.content, this.postImage);
}
