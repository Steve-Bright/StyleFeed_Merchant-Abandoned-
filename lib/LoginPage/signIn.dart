import 'package:flutter/material.dart';

class SigningInPage extends StatefulWidget {
  const SigningInPage({super.key});

  @override
  State<SigningInPage> createState() => _SigningInPageState();
}

class _SigningInPageState extends State<SigningInPage> {
  final _formKey = GlobalKey<FormState>();
  String? _phone;
  String? _pwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('StyleFeed Sign In Page')),
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 30.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                              child: Column(children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/logo2.png'),
                              radius: 100,
                            ),
                            SizedBox(
                              height: 50.0,
                              // color: Colors.grey[300],
                            ),
                            Text('Merchants Sign In',
                                style: TextStyle(
                                  // color: Colors.amber,
                                  letterSpacing: 2.0,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                )),
                          ])),
                          SizedBox(
                            height: 30.0,
                            // color: Colors.grey[300],
                          ),
                          Text('Email or Phone Number',
                              style: TextStyle(
                                  // color: Colors.grey,
                                  // letterSpacing: 2.0,
                                  )),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Enter Name',
                                  hintText: 'Email / Phone Number'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email or phone number';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _pwd = value;
                              }),
                          SizedBox(
                            height: 20.0,
                            // color: Colors.grey[300],
                          ),
                          Text('Password',
                              style: TextStyle(
                                  // color: Colors.grey,
                                  // letterSpacing: 2.0,
                                  )),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Enter Name',
                                  hintText: 'Enter your password here'),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password here';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _phone = value;
                              }),
                          SizedBox(
                            height: 30.0,
                          ),
                          SizedBox(
                            width: 400.0,
                            height: 50.0,
                            child: TextButton(
                                child: Text('Sign In',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Validation succeeded, save and process the data
                                    Navigator.pushReplacementNamed(
                                        context, '/productDetail');
                                    _formKey.currentState!.save();
                                    // Perform additional actions, e.g., send data to a server
                                  }
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.grey))),
                          ),
                          SizedBox(height: 10),
                          Center(
                              child:
                                  Text('or use one of your social profiles')),
                          SizedBox(height: 10),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 150.0,
                                        height: 50.0,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text('Google',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.grey),
                                            )),
                                      ),

                                      // SizedBox(
                                      //     width: 50.0
                                      // ),

                                      SizedBox(
                                        width: 150.0,
                                        height: 50.0,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text('Facebook',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.grey),
                                            )),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          //navigate to the page
                                        },
                                        child: Text('Forgot Password',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueAccent)),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          //navigate to the page
                                          Navigator.pushReplacementNamed(
                                              context, '/signUp');
                                        },
                                        child: Text('Sign Up',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueAccent)),
                                      ),
                                    ]
                                ),

                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: InkWell(
                                        onTap: (){
                                          // Navigator.pushReplacementNamed(context, '/userHome');
                                        },
                                        child: Text('Continue as a guest', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
                                    ),
                                  ),
                                ),

                              ]
                          ),


                        ]
                    )
                )
            )
        )
    );

  }
}
