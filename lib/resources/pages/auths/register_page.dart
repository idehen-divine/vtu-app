import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/forms/auths/register_form.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/auths/register_controller.dart';

class RegisterPage extends NyStatefulWidget<RegisterController> {
  static RouteView path = ("/register", (_) => RegisterPage());

  RegisterPage({super.key}) : super(child: () => _RegisterPageState());
}

class _RegisterPageState extends NyState<RegisterPage> {

  /// [RegisterController] controller
  RegisterController get controller => widget.controller;
 RegisterForm form =RegisterForm();

 @override
  get init => () {

  };
  
 @override
  Widget view(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.get(context).background,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.android,
              size: 100,
            ),
            SizedBox(height: 50),
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
                        controller.signUp(data);
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
                    text: "Have an account?",
                    style: TextStyle(
                      color: ThemeColor.get(context).content,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: " SingIn",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.onTapSignin();
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
