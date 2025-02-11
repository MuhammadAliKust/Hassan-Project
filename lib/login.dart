import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Login"),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
          Icon(Icons.notifications),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@mail.com',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                disabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email),
                filled: true,
                fillColor: Colors.blue.withOpacity(0.4)
                // enabled: false
                ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: pwdController,
            keyboardType: TextInputType.phone,
            obscureText: true,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password must be 6 or more characters.',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.yellow, width: 4)),
                disabledBorder: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                filled: true,
                fillColor: Colors.blue.withOpacity(0.4)

                // enabled: false
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerRight, child: Text("Forgot Password")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty")));
                  return;
                }
                if(!emailController.text.isEmail){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email is not valid")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Password must be 6 or more characters.")));
                  return;
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
