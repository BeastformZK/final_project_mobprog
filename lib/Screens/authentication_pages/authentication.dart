import 'package:flutter/material.dart';
import '../../constant_variables/constants.dart';
import '../../models/api_response.dart';
import '../../services_app/service_users.dart';
import '../home_pages/home_page.dart';
import 'login_page.dart';

// Radaza

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void _loadUserInfo() async {
    String token = await getToken();
    if (token == '') {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginWidget()),
          (route) => false);
    } else {
      ApiResponse response = await getUserDetail();
      if (response.error == null) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const Homepage()),
            (route) => false);
      } else if (response.error == unauthorized) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const LoginWidget()),
            (route) => false);
      } else {
        // ignore: use_build_context_synchronously
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
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
