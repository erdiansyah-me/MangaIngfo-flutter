import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangaingfo/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  final _form = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 122, 11, 100),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LOGIN", style: TextStyle(fontFamily: 'opensans',fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),),
                SizedBox(height: 8.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _name,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(fontWeight: FontWeight.normal, fontFamily: 'opensans',color: Colors.black),
                              labelText: 'Username',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color:Color.fromARGB(255, 0, 0, 0),
                                  width: 3,
                                )
                              ),
                              enabledBorder: OutlineInputBorder( //Outline border type for TextFeild
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                  color:Color.fromARGB(255, 30, 167, 64),
                                  width: 3,
                                )
                              )
                              ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Fill Username';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 8.0,),
                          TextFormField(
                            controller: _password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(fontWeight: FontWeight.normal, fontFamily: 'opensans',color: Colors.black),
                              labelText: 'Password',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color:Color.fromARGB(255, 0, 0, 0),
                                      width: 3,
                                    )
                                ),
                                enabledBorder: OutlineInputBorder( //Outline border type for TextFeild
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color:Color.fromARGB(255, 30, 167, 64),
                                      width: 3,
                                  )
                                )
                            ),
                            validator: (value) {
                              if (value!.length < 6) {
                                return 'Password Must be 6 Character or More';
                              }
                              return null;
                            },
                          ),
                          SizedBox( height: 16.0,),
                          ElevatedButton(
                            child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'opensans'),),
                            onPressed: () {
                              if (_form.currentState!.validate()) {
                              Navigator.push(context, 
                                  MaterialPageRoute(builder: (_) => HomePage(accountName: _name.text))
                                );
                              }
                            }, 
                          )
                        ],
                      ),
                    ),
                  )
                )
              ],
            )
          ),
        ),
      )
    );
  }
  @override 
  void dispose() {
    _name.dispose();
    _password.dispose();
    super.dispose();
  }
}