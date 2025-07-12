import 'package:fbreplica/Pages/FbHomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginpageState();
}

class _LoginpageState extends State<LoginPage> {
  bool isVisible = true;
  late Icon visibility_on_off;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isVisible = true;
    visibility_on_off = const Icon(Icons.visibility_off);
  }

  void LogInBtn(context) {
    if (emailController.text == "zubair@gmail.com" &&
        passwordController.text == "1234") {
      // Show error message
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FBHomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // Retrieve the text the that user has entered by using the
            // TextEditingController.
            title: const Text(
              'Need help finding your\naccount?',
              style: TextStyle(fontSize: 18),
            ),
            content: const Text(
              'It looks like bsh isn\'t connnected to an account but we can help you find your account and login.',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text(
                  'TRY AGAIN',
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text(
                  'FIND ACCOUNT',

                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
            ],
            // content: Text('Invalid email or password'),
          );
        },
      );
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('Invalid email or password'),
      //     duration: Duration(seconds: 2),
      //   ),
      // );
    }
  }

  void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
      if (isVisible) {
        visibility_on_off = const Icon(Icons.visibility_off);
      } else {
        visibility_on_off = const Icon(Icons.visibility);
      }
      // Logic to toggle visibility of password
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 58, 57, 57),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('English (US)', style: TextStyle(fontSize: 14)),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  weight: 1,
                  size: 30,
                  color: Colors.black54,
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTQ4qaRypGhEK8_uXhSb08y_HyITqm_jlpfg&s",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 80),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Mobile number or email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: passwordController,
                    obscureText: isVisible,
                    keyboardType: TextInputType.visiblePassword,

                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Pssword',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: visibility_on_off,
                        onPressed: () {
                          toggleVisibility();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logic to handle login
                        LogInBtn(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          45,
                          118,
                          237,
                        ),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        fontSize: 16,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                  // SizedBox(height: 20),
                  // SizedBox(
                  //   height: 50,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       // Logic to handle login
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       side: BorderSide(
                  //         color: const Color.fromARGB(255, 176, 45, 237),
                  //         width: 0.25,
                  //       ), // Add border

                  //       minimumSize: Size(double.infinity, 50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(50),
                  //       ),
                  //     ),
                  //     child: Text(
                  //       'Create new account',
                  //       // style: TextStyle(fontSize: 16, color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                  // Image(
                  //   // height: 100,
                  //   width: 70,
                  //   image: AssetImage("Assets/Images/Meta-Logo.png"),
                  // ),
                ],
              ),
            ),

            // const SizedBox(height: 500),
            const Expanded(child: SizedBox()),

            // Button at the bottom
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                  },
                  child: const Text('Create new account'),
                ),
              ),
            ),
            Image(
              // height: 100,
              width: 70,
              image: AssetImage("Assets/Images/Meta-Logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
