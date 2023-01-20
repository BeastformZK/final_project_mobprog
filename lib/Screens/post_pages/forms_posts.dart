import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
          style: TextStyle(
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

                        const Text("Game Name", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                        ),

                        TextFormField(
                          controller: _txtControllerBody,
                          keyboardType: TextInputType.multiline,
                          maxLines: 1,
                          validator: (val) =>
                              val!.isEmpty ? 'Post body is required' : null,
                          decoration: const InputDecoration(
                              hintText: "Post body...",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black38))),
                        ),

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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a title';
                            }
                          },
                        ),

                        const SizedBox(height: 5,),

                        const Text("Owner", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),),

                        TextFormField(
                          controller: owner,
                          keyboardType: TextInputType.text,
                          maxLines: null,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Owner of the game',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter the owner of the game';
                            }
                          },
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

                        const Text("Category", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),),

                        DropdownButtonFormField(
                            hint: const Text("Category"),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                            items: const [
                              DropdownMenuItem(
                                value: "Action (FPS and TPS)",
                                child: Text('Action (FPS and TPS)'),
                              ),
                              DropdownMenuItem(
                                value: 'MOBA',
                                child: Text('MOBA'),
                              ),
                              DropdownMenuItem(
                                value: 'RPG, ARPG,',
                                child: Text('RPG, ARPG,'),
                              ),

                              DropdownMenuItem(
                                value: 'Simulation and sports',
                                child: Text('Simulation and sports'),
                              ),

                              DropdownMenuItem(
                                value: 'Puzzlers and party games',
                                child: Text('Puzzlers and party games'),
                              ),

                              DropdownMenuItem(
                                value: 'Adventure',
                                child: Text('Adventure'),
                              ),

                              DropdownMenuItem(
                                value: 'Survival and Horror',
                                child: Text('Survival and Horror'),
                              ),

                            ],
                            onChanged: (value) {

                              category = value.toString();
                            }
                        ),


                        const SizedBox(height: 5,),

                        const Text("Date Released", style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),),

                        DropdownButtonFormField(
                            hint: const Text("When year was this released?"),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),

                            items: const [
                              DropdownMenuItem(
                                value: 2010,
                                child: Text('2010'),
                              ),
                              DropdownMenuItem(
                                value: 2011,
                                child: Text('2011'),
                              ),
                              DropdownMenuItem(
                                value: 2012,
                                child: Text('2012'),
                              ),

                              DropdownMenuItem(
                                value: 2013,
                                child: Text('2013'),
                              ),

                              DropdownMenuItem(
                                value: 2014,
                                child: Text('2014'),
                              ),

                              DropdownMenuItem(
                                value: 2015,
                                child: Text('2015'),
                              ),

                              DropdownMenuItem(
                                value: 2016,
                                child: Text('2016'),
                              ),

                              DropdownMenuItem(
                                value: 2017,
                                child: Text('2017'),
                              ),
                              DropdownMenuItem(
                                value: 2018,
                                child: Text('2018'),
                              ),

                              DropdownMenuItem(
                                value: 2019,
                                child: Text('2019'),
                              ),

                              DropdownMenuItem(
                                value: 2020,
                                child: Text('2020'),
                              ),
                              DropdownMenuItem(
                                value: 2021,
                                child: Text('2021'),
                              ),
                              DropdownMenuItem(
                                value: 2022,
                                child: Text('2022'),
                              ),
                              DropdownMenuItem(
                                value: 2023,
                                child: Text('2023'),
                              ),
                            ],
                            onChanged: (value) {
                              yearReleased = value.toString();
                            }
                        ),

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
