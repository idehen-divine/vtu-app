import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/controllers/auths/login_controller.dart';
import 'package:flutter_app/app/forms/auths/login_form.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:nylo_framework/nylo_framework.dart';

class LoginPage extends NyStatefulWidget<LoginController> {
  static RouteView path = ("/login", (_) => LoginPage());

  LoginPage({super.key}) : super(child: () => _LoginPageState());
}

class _LoginPageState extends NyState<LoginPage> {
  /// [LoginController] controller
  LoginController get controller => widget.controller;
  LoginForm form = LoginForm();

  @override
  get init => () {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.get(context).background,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.android,
              size: 100,
            ),
            SizedBox(height: 25),
            Text(
              'Hello Again',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: ThemeColor.get(context).content,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(
                fontSize: 20,
                color: ThemeColor.get(context).content,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: NyForm(
                form: form,
                footer: Material(
                  color: ThemeColor.get(context).primary,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      form.submit(onSuccess: (data) {
                        controller.signIn(data);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Center(
                        child: Text('Sign In',
                            style: TextStyle(
                              color: ThemeColor.get(context).white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: ThemeColor.get(context).content,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: " Register Now",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.onTapRegister();
                            },
                          style: TextStyle(
                            color: ThemeColor.get(context).blue,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
