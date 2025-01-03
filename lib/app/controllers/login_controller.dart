// ignore_for_file: unnecessary_overrides
import 'package:flutter_app/resources/pages/register_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';

class LoginController extends Controller {
  
  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  signIn(dynamic data) {
    print(data);
  }

  onTapRegister() {
    routeTo(RegisterPage.path);
  }
} 
