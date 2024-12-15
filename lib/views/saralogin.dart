import 'package:flutter/material.dart';
import 'package:sechw/config/validators.dart';
import 'package:sechw/helpers/constans.dart';
import 'package:sechw/config/routes.dart';
import 'package:sechw/models/login_models.dart';
import 'package:sechw/themes/colors.dart';
import 'package:sechw/widget/custom_card.dart';
import 'package:sechw/widget/customer_text.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginScreenState createState()=>  _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  void _login() {
    if (_formKey.currentState!.validate()) {
      UserModel user = UserModel(
        id: '1',
        username: emailController.text,
        password: passwordController.text,
        email: emailController.text,
      );
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('تسجيل الدخول')),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding,
            vertical: 10),
          child: CustomCard(

            child: Form(key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFiled(
                    controller: nameController,
                    lableText: 'name',
                    obscureText: false,
                  ),
                  SizedBox(height: 14,),
                  CustomTextFiled(
                    controller: passwordController,
                    lableText: 'password',
                    obscureText: true,
                    Validator: validatePassword,
                  ),
                  SizedBox(height: 14,),
                  CustomTextFiled(
                    controller: emailController,
                    lableText: 'email',
                    obscureText: false,
                    Validator: validateEmail,

                  ),
                  SizedBox(height: 14,),
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(onPressed: _login, child: Text('login')),

  ],


),

                ],


              ),


            ),

          ),
        ),


      );
    }
  }





