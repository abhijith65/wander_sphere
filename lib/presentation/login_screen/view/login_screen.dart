import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wander_sphere/presentation/home_screen/view/home_screen.dart';
import 'package:wander_sphere/presentation/signup_screen/view/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'welcome back',
              style: TextStyle(fontSize: 40),
            ),
           // Text('login to your account', style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_pin),
                  icon: Icon(Icons.high_quality),
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  hintText: 'enter username'),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.high_quality),
                  border: OutlineInputBorder(),
                  labelText: 'password',
                  hintText: 'enter password',
                 // helperText: 'password must have atleast 4 letters'
              ),
            ),
            RichText(
                text: TextSpan(
                    text: 'not a user? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                  TextSpan(
                      text: 'SignUp',
                      recognizer: TapGestureRecognizer()..onTap=(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
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
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
