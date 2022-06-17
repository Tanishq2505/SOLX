import 'package:flutter/material.dart';
import 'package:solx/presentation/screens/main_dashboard.dart';
import 'package:solx/presentation/screens/register_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left,
                    )),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/hey.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Welcome $name",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Username cannot be empty";
                                }

                                return null;
                              },
                              onChanged: (value) {
                                name = value;
                                setState(() {});
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password",
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password cannot be empty";
                                } else if (value.length < 6) {
                                  return "Password length should be atleast 6";
                                }

                                return null;
                              },
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Material(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainDashboard(),
                                    ),
                                    (route) => false,
                                  );
                                },
                                child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: changeButton ? 50 : 150,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: changeButton
                                      ? Icon(Icons.done, color: Colors.white)
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                  context.accentColor,
                                ),
                              ),
                              child: Text("Register Now")
                                  .text
                                  .headline6(context)
                                  .make(),
                            ),
                            // Link(
                            //     // uri: Uri.parse("https://codepur.dev"),
                            //     uri: Uri.parse(MyRoutes.cartRoute),
                            //     target: LinkTarget.blank,
                            //     builder: (context, followLink) {
                            //       return TextButton(
                            //           onPressed: followLink,
                            //           style: ButtonStyle(
                            //               foregroundColor: MaterialStateProperty.all(
                            //                   context.accentColor)),
                            //           child: Text("Go to codepur"));
                            //     }),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
