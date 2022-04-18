import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'package:lary_foisy/Scrrens/HomeScreen.dart';
import 'package:lary_foisy/Scrrens/MenuScreen.dart';
import 'package:lary_foisy/Scrrens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LogIN extends StatefulWidget {
  const LogIN({Key? key}) : super(key: key);

  @override
  _LogINState createState() => _LogINState();
}

class _LogINState extends State<LogIN> {
final _auth=FirebaseAuth.instance;
  TextEditingController emailAddress=  new TextEditingController();
  TextEditingController pasword=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    'Assets/images/Group32.png',
                    height: 180,
                    width: 180,
                  ),
                ),
              ),
              Container(
                height: 550,
                width: 400,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Already',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'have an',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Account?',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('Email'),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailAddress,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          label: Text('example@gmail.com'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Pasword'),
                      TextField(
                        controller: pasword,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          label: Text('********'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                minWidth: 250.0,
                                height: 50.0,
                                child: RaisedButton(
                                  color: Colors.red,
                                  onPressed: () async{
                                    try{
                                      String email=emailAddress.text.trim(),pasworrd=pasword.text.trim();
                                      final newUser= await _auth.createUserWithEmailAndPassword(email: email, password: pasworrd);
                                      if(newUser!=null){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomeScreen()),
                                        );
                                      }
                                    }catch(e){
                                      print(e);
                                    }
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MenuScreen()));
                                  },
                                  child: Text(
                                    'New use? Signup',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                        child: Divider(
                                          thickness: 2,
                                          color: Colors.black,
                                        )),
                                    Text(
                                      "   Use other Methods    ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(
                                        child: Divider(
                                          thickness: 2,
                                          color: Colors.black,
                                        )),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'Assets/images/fb.png',
                                        height: 50,
                                        width: 50,
                                      ),
                                      Image.asset('Assets/images/gp.png')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

