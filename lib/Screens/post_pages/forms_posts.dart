import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../Models/models_posts.dart';
import '../../constant_variables/constants.dart';
import '../../models/api_response.dart';
import '../../services_app/service_post.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';

class PostForm extends StatefulWidget {
  final Post? post;
  final String? title;

  const PostForm({super.key, this.post, this.title});

  @override
  // ignore: library_private_types_in_public_api
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();

  bool _loading = false;
  File? _imageFile;
  final _picker = ImagePicker();

  Future getImage() async {
    PermissionStatus storageStatus = await Permission.storage.request();

    if (storageStatus == PermissionStatus.granted) {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = File(pickedFile!.path);
      });
    }

    if (storageStatus == PermissionStatus.denied) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("This permission is required")));
    }

    if (storageStatus == PermissionStatus.permanentlyDenied) {
      openAppSettings();
    }
  }

  void _createPost() async {
    String? image = _imageFile == null ? null : getStringImage(_imageFile);
    ApiResponse response =
        await createPost(_title.text, image, _description.text);

    if (response.error == null) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
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
      setState(() {
        _loading = !_loading;
      });
    }
  }

  // edit post
  void _editPost(int postId) async {
    ApiResponse response =
        await editPost(postId, _title.text, _description.text);
    if (response.error == null) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
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
      setState(() {
        _loading = !_loading;
      });
    }
  }

  @override
  void initState() {
    if (widget.post != null) {
      _title.text = widget.post!.title ?? '';
    }

    if (widget.post != null) {
      _description.text = widget.post!.description ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.title}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                widget.post != null
                    ? const SizedBox()
                    : Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                            image: _imageFile == null
                                ? null
                                : DecorationImage(
                                    image: FileImage(_imageFile ?? File('')),
                                    fit: BoxFit.cover)),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(Icons.image,
                                size: 50, color: Colors.black38),
                            onPressed: () {
                              getImage();
                            },
                          ),
                        ),
                      ),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Game Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        TextFormField(
                          controller: _title,
                          keyboardType: TextInputType.text,
                          maxLines: null,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ex. Mobile Legend',
                          ),
                          validator: (value) => value!.isEmpty
                              ? 'Please Input the Name of the Game!'
                              : null,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        TextFormField(
                          controller: _description,
                          keyboardType: TextInputType.text,
                          maxLines: null,
                          minLines: 3,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "What's on this game? ",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a description';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _loading = !_loading;
                            });
                            if (widget.post == null) {
                              _createPost();
                            } else {
                              _editPost(widget.post!.id ?? 0);
                            }
                          }
                        },
                        child: const Text('Post'),
                      ),
                    ))
              ],
            ),
    );
  }
}
