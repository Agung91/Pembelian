import 'package:flutter/material.dart';
import './dashboard.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pembelian',
      home: Scaffold(
          body: TampilanLogin()
      ),
    );
  }
}

class TampilanLogin extends StatefulWidget {
  const TampilanLogin({Key? key}) : super(key: key);

  @override
  _TampilanLoginState createState() => _TampilanLoginState();
}

class _TampilanLoginState extends State<TampilanLogin> {
  final ButtonStyle style1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      primary: Color(0xFFFF8B2D),
      minimumSize: Size(329, 50));

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 23.0, right: 23.0),
      child: Form(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    'Hello',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    'Welcome to the login page',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 34.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'user@gmail.com',
                  labelStyle: TextStyle(color: Color(0xFF6A6F7D)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF8B2D)),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xFF6A6F7D)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF8B2D)),
                  ),
                ),
                obscureText: true,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xFFFF8B2D),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text('Remember'),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('LOGIN'),
                style: style1,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t Have Account?   '),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color(0xFFFF8B2D),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

