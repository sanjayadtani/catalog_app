import 'package:catelog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var changeBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome User",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeBtn = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoute.home);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeBtn ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeBtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeBtn ? 50 : 8),
                      ),
                    ),
                  ),
                  /*ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.home);
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 50),
                    ),
                    child: Text("Login"),
                  )*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
