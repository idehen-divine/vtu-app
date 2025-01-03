import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/register_controller.dart';

class RegisterPage extends NyStatefulWidget<RegisterController> {
  static RouteView path = ("/register", (_) => RegisterPage());

  RegisterPage({super.key}) : super(child: () => _RegisterPageState());
}

class _RegisterPageState extends NyState<RegisterPage> {

  /// [RegisterController] controller
  RegisterController get controller => widget.controller;

 @override
  get init => () {

  };
  
 @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
