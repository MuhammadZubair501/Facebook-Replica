import 'package:fbreplica/Pages/IconsStack.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FBHomePage extends StatelessWidget {
  const FBHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              // Action when the button is pressed
            },
          ),
          SizedBox(width: 10),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {
              // Action when the button is pressed
            },
          ),
          IconButton(
            color: Colors.black,
            icon: StackIcon(
              null,
              FontAwesomeIcons.facebookMessenger,
              "5",
              3,
              3,
            ),
            onPressed: () {
              // Action when the button is pressed
            },
          ),
          // SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CraateNavigationBtn(Icon(Icons.home_outlined,size: 30)),
              CraateNavigationBtn(Icon(Icons.group_outlined,size: 30)),
              CraateNavigationBtn(Icon(Icons.video_camera_back_outlined,size: 30)),
              CraateNavigationBtn(Icon(Icons.store_mall_directory_outlined,size: 30)),
              CraateNavigationBtn(Icon(Icons.notifications_none_outlined,size: 30)),

            ],
          ),
          Container(color: Colors.grey, height: 1),
        ],
      ),
    );
  }

 Widget CraateNavigationBtn(IconsImage) {
  return Column(
    mainAxisSize: MainAxisSize.min, // Prevents taking unnecessary space
    children: [
      IconButton(
        color: Colors.black,
        onPressed: () {},
        icon:IconsImage,
      ),
      Container(
        height: 3,
        width: 50, // Add width if needed to make it visible
        color: Color.fromARGB(255, 8, 102, 255),
      ),
    ],
  );
}

}

