import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  bool valueSwitch = false;

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
                icon: Icon(Icons.chevron_left),
              ),
              Container(
                padding: Vx.mH16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Sign Up"
                        .text
                        .xl5
                        .bold
                        .color(context.theme.accentColor)
                        .make(),
                    "Create your account".text.xl2.make(),
                    SizedBox(
                      height: Vx.dp10,
                    ),
                    CupertinoFormSection(
                        header: "Personal Details".text.make(),
                        children: [
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter name",
                            ),
                            prefix: "Name".text.make(),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter phone",
                            ),
                            prefix: "Phone".text.make(),
                          )
                        ]),
                    CupertinoFormSection(header: "User".text.make(), children: [
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          placeholder: "Enter email",
                        ),
                        prefix: "Email".text.make(),
                      ),
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          placeholder: "Enter password",
                          obscureText: true,
                        ),
                        prefix: "Password".text.make(),
                      ),
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          placeholder: "Re-enter password",
                          obscureText: true,
                        ),
                        prefix: "Confirm Password".text.make(),
                      )
                    ]),
                    CupertinoFormSection(
                        header: "Terms & Conditions".text.make(),
                        children: [
                          CupertinoFormRow(
                            child: CupertinoSwitch(
                              value: valueSwitch,
                              onChanged: (value) {
                                valueSwitch = value;
                                setState(() {});
                              },
                            ),
                            prefix: "I Agree".text.make(),
                          ),
                        ]),
                    20.heightBox,
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {},
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ).centered(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
