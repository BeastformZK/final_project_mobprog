import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  final Function()? tap;

  const RegisterWidget({Key? key, required this.tap}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    if (passwordController.text == confirmPasswordController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } else {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              backgroundColor: Colors.grey,
              title: Center(
                child: Text(
                  'Password not a match',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          });

    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(children: [
                      const Icon(
                        Icons.gamepad_rounded,
                        size: 80,
                        color: Colors.lightGreen,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Sign Up!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              decoration:
                                  const InputDecoration(labelText: 'Email'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              controller: passwordController,
                              textInputAction: TextInputAction.done,
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              controller: confirmPasswordController,
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                  labelText: 'Confirm Password'),
                              obscureText: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 110.0),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor: Colors.lightGreen,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          icon: const Icon(
                            Icons.app_registration,
                            size: 30,
                            color: Colors.black54,
                          ),
                          label: const Text(
                            'Sign up',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                          onPressed: signUserUp,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an Account?',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: widget.tap,
                            child: const Text(
                              ' Log In',
                              style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
