import 'package:flutter/material.dart';
import 'package:to_do_app/Constants/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 2),
          ),
          child: Column(children: [
            const Text(
              'PLEASE LOGIN',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Constants.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    labelText: 'Please Enter Your Email',
                    border: UnderlineInputBorder()),
              ),
            ),
            Constants.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    labelText: 'Please Enter Your Password',
                    border: UnderlineInputBorder()),
              ),
            ),
            Constants.verticalSpace,
            Constants.verticalSpace,
            Constants.verticalSpace,
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Or continue Anonymously',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
