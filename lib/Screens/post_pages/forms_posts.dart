import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../Models/models_posts.dart';
import '../../constant_variables/constants.dart';
import '../../models/api_response.dart';
import '../../services_app/service_post.dart';
import '../../services_app/service_users.dart';
import '../authentication_pages/login_page.dart';

// Tibudan, Chelsea Shaira E.

class PostForm extends StatefulWidget {
  final Post? post;
  final String? title;

  const PostForm({super.key, this.post, this.title});

  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _txtControllerBody = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController owner = TextEditingController();
  var category = '';
  var yearReleased = '';
  var alreadyPlayed = '';
  bool _loading = false;
  File? _imageFile;
  final _picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _createPost() async {
    String? image = _imageFile == null ? null : getStringImage(_imageFile);
    ApiResponse response = await createPost(_txtControllerBody.text, image);

    if (response.error == null) {
      Navigator.of(context).pop();
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginWidget()),
                (route) => false)
          });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
      setState(() {
        _loading = !_loading;
      });
    }
  }

  // edit post
  void _editPost(int postId) async {
    ApiResponse response = await editPost(postId, _txtControllerBody.text);
    if (response.error == null) {
      Navigator.of(context).pop();
    } else if (response.error == unauthorized) {
      logout().then((value) => {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginWidget()),
                (route) => false)
          });
    } else {
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
      _txtControllerBody.text = widget.post!.body ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        backgroundColor: Colors.black87,
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
                        const SizedBox(height: 5,),

                        const Text("Game Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                        ),

                        TextFormField(
                          controller: title,
                          keyboardType: TextInputType.text,
                          maxLines: null,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ex. Mobile Legend',
                          ),
                         validator: (value) => value!.isEmpty ? 'Invalid Input!' : null,
                        ),


                        const SizedBox(height: 5,),

                        const Text("Description", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),),

                        TextFormField(
                          controller: description,
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
                          },
                        ),

                        const SizedBox(height: 5,),

                        const SizedBox(height: 20,),


                      ],
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )
                            )
                        ),
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
