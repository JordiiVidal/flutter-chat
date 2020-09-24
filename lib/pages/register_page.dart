import 'package:flutter/material.dart';

import 'package:realt_time_chat/widgets/custom_input.dart';
import 'package:realt_time_chat/widgets/custom_button.dart';
import 'package:realt_time_chat/widgets/custom_labels.dart';
import 'package:realt_time_chat/widgets/logo.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(title: 'Register'),
                _Form(),
                CustomLabels(
                  route: 'login',
                  title: '¿Ya tienes una cuenta?',
                  txtButton: 'Hacer login',
                ),
                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.person,
            placeholder: 'Nombre',
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.email,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock,
            placeholder: 'Password',
            textController: passCtrl,
            isPassword: true,
          ),
          CustomButton(
            text: 'Register',
            onPressed: () {
              print('${emailCtrl.text}  - ${passCtrl.text}');
            },
          ),
        ],
      ),
    );
  }
}
