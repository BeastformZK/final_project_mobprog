import 'package:final_project_mobprog/Models/api_response.dart';
import 'package:final_project_mobprog/Models/models_users.dart';
import 'package:final_project_mobprog/Screens/homepage.dart';
import 'package:final_project_mobprog/Screens/register_page.dart';
import 'package:final_project_mobprog/services_app/service_users.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;

  void _loginUser() async {
    ApiResponse response = await login(emailController.text, passwordController.text);
    if (response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    } else {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Homepage()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Form(
          key: formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(children: [
                      const Icon(
                        Icons.gamepad_rounded,
                        size: 150,
                        color: Colors.lightGreen,
                      ),
                      const SizedBox(height: 60),
                      const Text(
                        'Welcome!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              validator: (val) =>
                                  val!.isEmpty ? 'Invalid email address' : null,
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
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              controller: passwordController,
                              validator: (val) => val!.length < 6
                                  ? 'Required at least 6 chars' : null,
                              textInputAction: TextInputAction.done,
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      loading
                          ? const Center(child: CircularProgressIndicator())
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 110.0),
                              child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size.fromHeight(50),
                                      backgroundColor: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  icon: const Icon(
                                    Icons.login,
                                    size: 30,
                                    color: Colors.black54,
                                  ),
                                  label: const Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black54),
                                  ),
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      setState(() {
                                        loading = true;
                                        _loginUser();
                                      });
                                    }
                                  }),
                            ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Not a Member?',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => const RegisterWidget()),
                                  (route) => false);
                            },
                            child: const Text(
                              ' Sign Up',
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
