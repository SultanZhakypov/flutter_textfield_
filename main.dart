import 'package:flutter/material.dart';

void main() => runApp(MyApp());

TextEditingController loginText = TextEditingController();
TextEditingController passText = TextEditingController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
              child: Container(
                color: Colors.grey[350], 
                child: Column(           
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: const [
                                Text('Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextField(
                                controller: loginText,
                                onChanged: (e) {
                                  print(loginText.text);
                                },
                                decoration: InputDecoration(border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Password',
                                style:TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),),
                                Text('Forgot Password?',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextField(
                                controller: passText,
                                onChanged: (e) {
                                  print(passText.text);
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder()
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                  color: Colors.blue,
                                ),
                                alignment: Alignment.center,
                                height: 40,
                                child: const Text('Log in',
                                style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: RichText(text: const TextSpan(
                        text: "Dont have an account?",
                      children: <TextSpan>[TextSpan(
                        text:" Sign up",
                      style: TextStyle(
                        color:Colors.blue,
            )
             )
                  ]
                      )
                      ),
                    ),
                  ],
                ),
              )
            
          )
        ),
      ),
    );
  }
}