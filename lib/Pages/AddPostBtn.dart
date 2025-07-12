import 'dart:math';

import 'package:fbreplica/Pages/FbHomePage.dart';
import 'package:flutter/material.dart';

class AddPostbtnPanel extends StatefulWidget {
  const AddPostbtnPanel({super.key});

  @override
  State<AddPostbtnPanel> createState() => _AddPostbtnPanelState();
}

class _AddPostbtnPanelState extends State<AddPostbtnPanel> {
  final TextEditingController postUrlController = TextEditingController();
  final TextEditingController postContentController = TextEditingController();

  @override
  void dispose() {
    postUrlController.dispose();
    postContentController.dispose();
    super.dispose();
  }

  List Names = [
    'Werasat Hashmi',
    'Muhammad Zubair',
    'Muhammad umer ishtiaq',
    'Muhammad Mudassir',
    'Muhammad Hamza',
    'Salahuddin',
    'Anas',
    'Kashan Camando',
    'Abdullah',
    'Waqas Husaain',
    'Wahab',
    'Ikram',
  ];

  List ProfileImageUrl = [
    'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
    'https://media.istockphoto.com/id/1285124274/photo/middle-age-man-portrait.jpg?s=612x612&w=0&k=20&c=D14m64UChVZyRhAr6MJW3guo7MKQbKvgNVdKmsgQ_1g=',
    'https://cdn6.f-cdn.com/files/download/38546484/28140e.jpg',
    'https://cdn.pixabay.com/photo/2023/02/17/16/25/man-7796384_1280.jpg',
    'https://www.shutterstock.com/image-photo/man-portrait-smile-outdoor-selfie-260nw-2490416235.jpg',
    'https://www.shutterstock.com/image-photo/happy-cheerful-45-year-old-600nw-2353012797.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtdlinPDu4XAm8AD1tGU_SKVHazTZ2N26gpg&s',
    'https://t3.ftcdn.net/jpg/06/39/64/14/360_F_639641415_lLjzVDVwL0RwdNrkURYFboc4N21YIXJR.jpg',
    'https://assets.entrepreneur.com/content/3x2/2000/20150406145944-dos-donts-taking-perfect-linkedin-profile-picture-selfie-mobile-camera-2.jpeg?format=pjeg&auto=webp&crop=1:1',
    'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/preset-images/profile-picture-maker/happy-girl-posing.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrvmSoUIaExZTeHiQFGTQ2JNZIBWZ6gB3DGQ&s',
    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  ];
  void handlePost() {
    final imageUrl = postUrlController.text.trim();
    final content = postContentController.text.trim();

    final random = Random();
    int randomNumber = 0 + random.nextInt((Names.length - 1) - 0);
    print(randomNumber);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const FBHomePage()),
    );
    posts.add(
      Post(
        NetworkImage(ProfileImageUrl[randomNumber]),
        Names[randomNumber],
        content,
        Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
    // if (imageUrl.isEmpty || content.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("Please fill out all fields")),
    //   );
    //   return;
    // }

    // // Simulate posting
    // print('Posted Image URL: $imageUrl');
    // print('Post Content: $content');
    // // You can clear fields after posting
    // postUrlController.clear();
    // postContentController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Avoid overflow on small screens
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          children: [
            TextField(
              controller: postUrlController,
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                labelText: 'Enter Image URL',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: postContentController,
              keyboardType: TextInputType.text,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Enter Post Content',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: handlePost,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2D76ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Post',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
