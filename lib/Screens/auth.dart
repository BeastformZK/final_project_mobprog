import 'package:final_project_mobprog/Models/api_response.dart';
import 'package:final_project_mobprog/Screens/homepage.dart';
import 'package:final_project_mobprog/Screens/login_screen.dart';
import 'package:final_project_mobprog/constant_variables/constants.dart';
import 'package:final_project_mobprog/services_app/service_users.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void _loadUserInfo() async {
    String token = await getToken();
    if(token == ''){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const LoginWidget()), (route) => false);
    }
    else {
      ApiResponse response = await getUserDetail();
      if (response.error == null){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const Homepage()), (route) => false);
      }
      else if (response.error == unauthorized){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const LoginWidget()), (route) => false);
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('${response.error}'),
        ));
      }
    }
  }

  @override
  void initState() {
    _loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: const Center(
          child: CircularProgressIndicator()
      ),
    );
  }
}