import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Models/models_users.dart';
import '../../models/api_response.dart';
import '../../services_app/service_users.dart';
import '../home_pages/home_page.dart';
import 'register_page.dart';


class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;
  bool passwordVisible = true;

  void _loginUser() async {
    ApiResponse response =
        await login(emailController.text, passwordController.text);
    if (response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    } else {
      setState(() {
        loading = false;
      });
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  void _saveAndRedirectToHome(User user) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('userId', user.id ?? 0);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Homepage()),
        (route) => false);
  }

  Future _permissionStorage() async{
    PermissionStatus storageStatus =
    await Permission.storage.request();

    if (storageStatus == PermissionStatus.granted){
      const LoginWidget();
    }

    if (storageStatus == PermissionStatus.denied){
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("This permission is required")));
    }

    if (storageStatus == PermissionStatus.permanentlyDenied){
      openAppSettings();
    }
  }

  @override
  void initState() {
    _permissionStorage();
    super.initState();
    passwordVisible = false;
    Future.delayed(const Duration(seconds: 5))
        .then((value) => {FlutterNativeSplash.remove()});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: SizedBox(
                        height: 200,
                        child: Image(
                            image: AssetImage('assets/background_logo.png')),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            textInputAction: TextInputAction.next,
                            validator: (val) =>
                                val!.isEmpty ? 'Invalid email address.' : null,
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                border: InputBorder.none,
                                icon: Icon(Icons.alternate_email_outlined)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              obscureText: !passwordVisible,
                              validator: (val) => val!.length < 6
                                  ? 'Required at least 6 characters.'
                                  : null,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                border: InputBorder.none,
                                icon: const Icon(Icons.key_outlined),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey),
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                ),
                              ),
                            )),
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
                                  if (formKey.currentState!.validate()) {
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
                          'Not a Member? ',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterWidget()),
                                (route) => false);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
