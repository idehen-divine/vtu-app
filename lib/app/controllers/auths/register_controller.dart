// ignore_for_file: unnecessary_overrides

import 'package:flutter_app/resources/pages/auths/login_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';

class RegisterController extends Controller {
  
  @override
  construct(BuildContext context) {
    super.construct(context);

  }

  signUp(data) {
    print(data);
  }

  onTapSignin() {
    routeTo(LoginPage.path);
  }
} 
