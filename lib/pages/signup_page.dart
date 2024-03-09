import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../utils/style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscure = true;
  String email = "", password = "", name = "", confirmPassword = "";
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  void _register() async{
    if(password!=null && password == confirmPassword){
      try{
       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
       final user = userCredential.user;
       ScaffoldMessenger.of(context).showSnackBar((const SnackBar(content: Text("Succesfully Registered", style: TextStyle(fontSize: 20.0),),)));
       
      }on FirebaseAuthException catch(e){
        if(e.code=='weak-password'){
          ScaffoldMessenger.of(context).showSnackBar((const SnackBar(content: Text("Given Password is too weak",style: TextStyle(fontSize: 18.0),),)));
        } else if(e.code=='email-already-in-use'){
          ScaffoldMessenger.of(context).showSnackBar((const SnackBar(content: Text("Account already exist",style: TextStyle(fontSize: 18.0),),)));
        }else if(e.code=='invalid-email'){
          ScaffoldMessenger.of(context).showSnackBar((const SnackBar(content: Text("Invalid Email",style: TextStyle(fontSize: 18.0),),)));
        }
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height / 4.0,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primary1, primary2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius:
                BorderRadius.vertical(bottom: Radius.elliptical(width, 105.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Center(
                      child: Text("Sign Up", style: heading1),
                    ),
                    Center(child: Text("Create a new Account", style: heading2)),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: medium, horizontal: medium),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(large),
                        child: Container(
                          height: height / 1.5,
                          width: width,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(large),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: medium,
                                right: medium,
                                top: height / 15,
                                bottom: height / 15),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Name',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.person, color: Color(0xFF7f30fe),)),
                                  controller: _nameController,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter email';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: medium),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'E-mail',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.mail_outlined, color: Color(0xFF7f30fe))),
                                  controller: _mailController,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter email';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: medium),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: const OutlineInputBorder(),
                                    prefixIcon: const Icon(Icons.password_rounded, color: Color(0xFF7f30fe)),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscure = !_obscure;
                                        });
                                      },
                                      icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off_outlined),
                                    ),
                                  ),
                                  obscureText: _obscure,
                                  controller: _passwordController,
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter a password';
                                      }

                                      // Password must be at least 8 characters long
                                      if (value.length < 8) {
                                        return 'Password must be at least 8 characters long';
                                      }

                                      // Check for at least one uppercase letter
                                      if (!value.contains(RegExp(r'[A-Z]'))) {
                                        return 'Password must contain at least one uppercase letter';
                                      }

                                      // Check for at least one lowercase letter
                                      if (!value.contains(RegExp(r'[a-z]'))) {
                                        return 'Password must contain at least one lowercase letter';
                                      }

                                      // Check for at least one digit
                                      if (!value.contains(RegExp(r'[0-9]'))) {
                                        return 'Password must contain at least one digit';
                                      }

                                      // Check for at least one special character
                                      if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                        return 'Password must contain at least one special character';
                                      }

                                      // If all checks pass, return null (no error)
                                      return null;
                                    },
                                ),
                                const SizedBox(height: medium),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Confirm Password',
                                    border: const OutlineInputBorder(),
                                    prefixIcon: const Icon(Icons.password_rounded, color: Color(0xFF7f30fe)),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _obscure = !_obscure;
                                        });
                                      },
                                      icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off_outlined),
                                    ),
                                  ),
                                  obscureText: _obscure,
                                  controller: _confirmPassController,
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Confirm password Empty';
                                    }
                                    else if(value != _passwordController){
                                      return 'Password doesn\'t match';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: small),
                                const Spacer(),
                                SizedBox(
                                  height: 50,
                                  width: width / 1.5,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primary1,
                                    ),
                                    child: Text(
                                      'Sign In',
                                      style: button,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text('Already have an Account?',
                                        style: TextStyle(fontSize: small)),
                                    TextButton(
                                      onPressed: () {
                                        if(_formkey.currentState!.validate()){
                                          setState(() {
                                            email = _mailController.text;
                                            name = _nameController.text;
                                            password = _passwordController.text;
                                            confirmPassword = _confirmPassController.text;
                                          });
                                        }
                                        _register();
                                      },
                                      child: const Text('Sign In'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
