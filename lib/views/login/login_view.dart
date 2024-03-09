import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/login_view_controller.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //
  final loginViewController = Get.put(LoginViewController());
  final _formKey = GlobalKey<FormState>();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          // Allow scrolling if content overflows
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 100.0), // Display Flutter logo
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: loginViewController.emailcontroller.value,
                  focusNode: loginViewController.emailFocusNode.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      Utils.snackbar("Warning", "Please enter email",
                          Appcolor.warningTitle);
                    }
                  },
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context,
                        loginViewController.emailFocusNode.value,
                        loginViewController.passwordFocusNode.value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextFormField(
                  controller: loginViewController.passwordController.value,
                  focusNode: loginViewController.passwordFocusNode.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      Utils.snackbar("Warning", "Please enter your password",
                          Appcolor.warningTitle);
                    }
                  },
                  obscureText: true, // Hide password input
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                RoundButton(
                  loading: false,
                  title: "Login",
                  onPress: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  textColor: Colors.white,
                  buttonColor: Colors.blue,
                  width: double.infinity,
                ),
                const SizedBox(height: 10.0),
                RoundButton(
                  loading: false,
                  title: "Forgot Password",
                  onPress: () {},
                  textColor: Colors.blue,
                  buttonColor: Colors.transparent,
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
