import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wander_sphere/presentation/home_screen/view/home_screen.dart';
import 'package:wander_sphere/presentation/login_screen/view/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'welcome to',
              style: TextStyle(fontSize: 40),
            ),
            Text('Wander Sphere', style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_pin),
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  hintText: 'enter username'),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'email',
                  hintText: 'enter email'),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_outlined),
                  labelText: 'password',
                  hintText: 'enter password',
                  helperText: 'password must have atleast 4 letters'),
            ),
            RichText(
                text: TextSpan(
                    text: 'already a user? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: 'LogIn',
                           recognizer: TapGestureRecognizer()..onTap=(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                           },
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey))
                    ])),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              color: Colors.green,
              child: Text('SignUp'),
            ),
          ],
        ),
      ),
    );
  }
}
