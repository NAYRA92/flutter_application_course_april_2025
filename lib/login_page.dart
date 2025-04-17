import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String errorMessage = "";
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s"),
            TextFormField(
              controller: mobile,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Enter your number",
                  labelText: "Mobile"),
            ),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Enter your password",
                  labelText: "Password"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (mobile.text == "779055730" && 
                    password.text == "123") {
                      setState(() {
                        errorMessage = "Success";
                      });
                    } else if (mobile.text.isEmpty && 
                    password.text.isEmpty) {
                      setState(() {
                        errorMessage = "No Data Found";
                      });
                    } else {
                      setState(() {
                        errorMessage = "Login Failed";
                      });
                    }
                  },
                  child: Text("LOGIN")),
            ),
            Text(errorMessage)
          ],
        ),
      ),
    );
  }
}
