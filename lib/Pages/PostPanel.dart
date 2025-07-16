import 'package:fbreplica/Pages/FbHomePage.dart';
import 'package:flutter/material.dart';

void RemovePost(index) {
  posts.removeAt(index);
}

Widget PostPanelToAdd(context,profileImage, ProName, content, PostImage, index) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Full width grey line ignoring padding
        // SizedBox(height: 20),
        // Container(color: Colors.grey, height: 3, width: double.infinity),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 20, backgroundImage: profileImage),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ProName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '2 hours ago',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      RemovePost(index);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FBHomePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                content,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: PostImage,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    label: Text('Like', style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.comment, size: 20, color: Colors.black),
                    label: Text(
                      'Comment',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.send, size: 20, color: Colors.black),
                    label: Text('Send', style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.share, size: 20, color: Colors.black),
                    label: Text('Share', style: TextStyle(color: Colors.black)),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),

        // Another full width grey line at the bottom
        Container(color: const Color.fromARGB(255, 212, 212, 212), height: 3),
        // SizedBox(height: 20),
      ],
    ),
  );
}
