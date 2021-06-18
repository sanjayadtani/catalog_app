import 'package:catelog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var changeBtn = false;
  var userName = "User";
  final _formKey = GlobalKey<FormState>();

  formSubmit(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.home);
      setState(() {
        changeBtn = false;
      });
    }
  }

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
              "Welcome $userName",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Username",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (val) {
                        setState(() {
                          userName = val;
                        });
                      },
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Username can\'nt be empty.";
                        }
                        return null;
                      },
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
                      validator: (val) {
                        if (val.isEmpty) {
                          return "Password can\'nt be empty.";
                        }
                        if (val.length < 6) {
                          return "Password length should be atleast 6 characters.";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeBtn ? 50 : 8),
                      child: InkWell(
                        onTap: () => formSubmit(context),
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
            ),
          ],
        ),
      ),
    );
  }
}
