import 'package:flutter/material.dart';
import 'package:insta_clone/screens/home_screen.dart';
import 'package:insta_clone/widgets/custom_button.dart';
import 'package:insta_clone/widgets/custom_input.dart';

todo() {}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/Instagram_logo.png",
            width: 200,
            height: 100,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const CustomInput(
                fSize: 13,
                padding: 10,
                text: "Phone number, username or email",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 280,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const CustomInput(
                fSize: 13,
                padding: 10,
                text: "Password",
                icon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 40),
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 280,
            child: CustomButton(
              text: "Log In",
              color: Colors.blue[400],
              tColor: Colors.white,
              pageToNav: const HomePage(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 280,
            child: Row(
              children: <Widget>[
                const Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 280,
            child: CustomButton(
              icon: Icons.facebook,
              iColor: Colors.blue,
              text: "Continue as Lorem Ipsum",
              color: Colors.transparent,
              tColor: Colors.blue,
              zText: 13,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign up.",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
