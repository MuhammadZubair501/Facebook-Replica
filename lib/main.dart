// import 'package:fbreplica/Pages/FbHomePage.dart';
// import 'package:fbreplica/Pages/PostPanel.dart';

import 'package:fbreplica/Pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookReplica());
}

class FacebookReplica extends StatelessWidget {
  const FacebookReplica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Replica',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      // home: FBHomePage(),
      // home: SocialMediaPost(),
    );
  }
}
