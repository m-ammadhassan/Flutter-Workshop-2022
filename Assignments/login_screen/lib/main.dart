import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(40),
          children: [
            FlutterLogo(size: 50,),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(decoration: InputDecoration(labelText: "Username")),
                TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true,),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){}, child: const Text("Login")),
                    const SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){}, child: const Text("SignUp"))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}