import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_clone/View/Widget/Text_Field.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({Key? key}) : super(key: key);
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _setController = new TextEditingController();
  TextEditingController _retype_passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 100),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO TiKTOK",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20191027/ourmid/pngtree-avatar-vector-icon-white-background-png-image_1884971.jpg"),
                    radius: 50,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                    controller: _emailController,
                    myIcon: Icons.email_outlined,
                    myLabelText: "User Name"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                    controller: _emailController,
                    myIcon: Icons.email_outlined,
                    myLabelText: "Email"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                    controller: _setController,
                    myIcon: Icons.lock_outline,
                    myLabelText: "Set Password"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                    controller: _retype_passController,
                    myIcon: Icons.key_outlined,
                    myLabelText: "Re-Type Password"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                    child: Text("SING UP"),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
