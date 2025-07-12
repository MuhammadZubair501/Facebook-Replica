import 'package:fbreplica/Pages/AddPostBtn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


 void NavigateToAddPostPanel(context) {
    
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AddPostbtnPanel()),
      );
   
  }











Widget PostPanel(context) {
  return Row(
    children: [
      SizedBox(width: 10),
       CircleAvatar(
        backgroundImage: AssetImage("Assets/Images/profilepic.jpg"),
      ),
      
     
      SizedBox(width: 10),

      // Expandable button in center
      Expanded(
        child: OutlinedButton(
          onPressed: (
            

          ) {
          NavigateToAddPostPanel(context);
            // Button action here
          },
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.grey, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft, // Text aligned to left
            child: Text(
              'What\'s on your mind?',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ),
      ),
      SizedBox(width: 10),

      
      Icon(
        FontAwesomeIcons.image,
        color: Colors.green,
      ),
      SizedBox(width: 10),
    ],
  );
}
