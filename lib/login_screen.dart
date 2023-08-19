import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/one.jpg'),
                      fit: BoxFit.fitHeight)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        tileMode: TileMode.repeated,
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: const [
                      0.3,
                      1
                    ],
                        colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.1)
                    ])),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Log In',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Let\s find your destination',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Enter email',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Enter password',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ]),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
