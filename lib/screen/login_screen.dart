import 'package:educate_app/screen/signup_screen.dart';
import 'package:flutter/material.dart';

import '../widget/BackButton_Widget.dart';
import '../widget/TextField_Widget.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'main2.jpg',
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            BackButton_Widget(),
            Center(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextField_Widget(
                      prefixIcon: Icons.email_outlined,
                      suffixIcon: Icons.highlight_remove,
                      label: 'Email',
                    ),
                    TextField_Widget(
                      prefixIcon: Icons.lock_rounded,
                      suffixIcon: Icons.remove_red_eye_outlined,
                      label: 'Password',
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 10,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Enter to Account',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Don\'t have a account?',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text(
                            ' Create account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
