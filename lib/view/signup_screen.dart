import "package:final_api/common/custom_textfield.dart";
import "package:final_api/controller/provider/signup_provider.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "../common/custom_button.dart";

class SignUpScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          var prov = context.watch<SignupProvider>();
          return prov.isLoading ?  Center(child: CircularProgressIndicator(),) : Column(
            children: [
              CustomTextField(
                controller: nameController,
                label: "Name",
              ),
              CustomTextField(
                controller: emailController,
                label: "Email",
              ),
              CustomTextField(
                controller: passwordController,
                label: "Password",
              ),
              CustomButton(
                onPressed: () {

                  // var provder =  Provider.of<SignupProvider>(context, listen: false);
                  var provder = context.read<SignupProvider>();
                  provder.signUp(context,name: nameController.text,email: emailController.text,password: passwordController.text);

                },
                text: "SignUp",
              )
            ],
          );
        }
      ),
    );
  }
}
