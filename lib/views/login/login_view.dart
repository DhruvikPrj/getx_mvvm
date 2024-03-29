import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/components/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/login/login_view_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //
  final loginViewController = Get.put(LoginViewController());
  final _formKey = GlobalKey<FormState>();
  //
  @override
  void dispose() {
    loginViewController.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                Image.asset(
                  "images/byptLogo.png",
                  width: 200,
                ), // Display Flutter logo
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: loginViewController.emailcontroller.value,
                  focusNode: loginViewController.emailFocusNode.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      const Text("Please enter email and password",
                          style: TextStyle(color: Appcolor.warningTitle));
                    }
                    return;
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
                      const Text("Please enter your password",
                          style: TextStyle(color: Appcolor.warningTitle));
                    }
                    return;
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
                Obx(
                  () => RoundButton(
                    height: 40,
                    loading: loginViewController.loading.value,
                    title: "Login",
                    onPress: () {
                      //print("Login Button Pressed");
                      if (_formKey.currentState!.validate()) {
                        loginViewController.loginApi();
                      }
                    },
                    textColor: Colors.white,
                    buttonColor: Colors.blue,
                    width: double.infinity,
                  ),
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
