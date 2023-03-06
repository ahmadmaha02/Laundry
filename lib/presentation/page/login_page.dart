import 'package:d_info/d_info.dart';
import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../config/session.dart';
import '../../data/source/source_user.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final username = TextEditingController();
  final password = TextEditingController();

  login() async {
    var user = await SourceUser.login(username.text, password.text);
    if (user == null) {
      DInfo.toastError('Failed');
    } else {
      Session.saveUser(user);
      DInfo.toastSuccess('Login Success');
      DInfo.closeDialog(actionAfterClose: () {
        Get.off(() => const HomePage());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DInput(
            controller: username,
            hint: 'username',
          ),
          DView.spaceHeight(),
          DInput(
            controller: password,
            hint: 'password',
          ),
          DView.spaceHeight(),
          ElevatedButton(
            onPressed: () => login(),
            child: Text('Login'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Login as Customer'),
          ),
        ],
      ),
    );
  }
}
