import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../Models/models_users.dart';
import '../../constant_variables/constants.dart';
import '../../models/api_response.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user;
  bool loading = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  File? _imageFile;
  final _picker = ImagePicker();
  TextEditingController txtNameController = TextEditingController();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  // get user detail
  void getUser() async {
    ApiResponse response = await getUserDetail();
    if (response.error == null) {
      setState(() {
        user = response.data as User;
        loading = false;
        txtNameController.text = user!.name ?? '';
      });
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginWidget()),
                (route) => false)
          });
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  //update profile
  void updateProfile() async {
    ApiResponse response =
        await updateUser(txtNameController.text, getStringImage(_imageFile));
    setState(() {
      loading = false;
    });
    if (response.error == null) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.data}')));
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginWidget()),
                (route) => false)
          });
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        elevation: 10,
        title: const Text('Game Blog', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.blueGrey[300],
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                child: ListView(
                  children: [
                    const SizedBox(height: 60),
                    Center(
                        child: GestureDetector(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: _imageFile == null
                                ? user!.image != null
                                    ? DecorationImage(
                                        image: NetworkImage('${user!.image}'),
                                        fit: BoxFit.cover)
                                    : null
                                : DecorationImage(
                                    image: FileImage(_imageFile ?? File('')),
                                    fit: BoxFit.cover),
                            color: Colors.green[700]),
                      ),
                      onTap: () {
                        getImage();
                      },
                    )),
                    const SizedBox(
                      height: 60,
                    ),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Name',
                            contentPadding: EdgeInsets.all(20),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 50, color: Colors.green))),
                        controller: txtNameController,
                        validator: (val) =>
                            val!.isEmpty ? 'Invalid Name' : null,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              loading = true;
                            });
                            updateProfile();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[700],
                        ),
                        child: const Text('Update Gamer'))
                  ],
                ),
              ),
      ),
    );
  }
}
