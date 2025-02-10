import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
          SizedBox(height: 20,),
          Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot Password")),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}
