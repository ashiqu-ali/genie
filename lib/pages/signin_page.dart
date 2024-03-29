import '../utils/style.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscure = true;

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
              child: Column(
                children: [
                  Center(
                    child: Text("SignIn", style: heading1),
                  ),
                  Center(child: Text("Welcome Back", style: heading2)),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: medium, horizontal: medium),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(large),
                      child: Container(
                        height: height / 2,
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
                                    labelText: 'E-mail',
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.mail_outlined)),
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: medium),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: const OutlineInputBorder(),
                                  prefixIcon: const Icon(Icons.password_rounded),
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
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: small),
                              Container(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password",
                                    style: heading3,
                                  ),
                                ),
                              ),
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
                                  Text('Don\'t have an Account?',
                                      style: TextStyle(fontSize: small)),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Sign Up'),
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
            )
          ],
        ),
      ),
    );
  }
}