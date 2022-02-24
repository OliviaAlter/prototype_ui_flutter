import 'package:flutter/material.dart';
import 'package:prototype_ui_app/login/temp_login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Opacity(opacity: 0.56, child: Image.asset("assets/cutebg.png")),
          const Positioned(
            top: 55,
            left: 40,
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          Container(
            width: double.infinity,
            height: 510,
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            margin: const EdgeInsets.only(top: 125, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.grey.shade400.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "E-mail",
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      filled: true),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      filled: true),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm password",
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      filled: true),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 130, vertical: 13)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TempLogin()));
                    },
                    child: const Text(
                      "Register",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black12,
                    child: Text(
                      "Or",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    width: double.infinity,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/googleicon.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Continue With Google ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 12),
                    width: double.infinity,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/fb.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Continue With Facebook ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Already have an account",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const TempLogin()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                )
                /*
                Row(
                  children: [
                    const Text(
                      "Already have an account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const TempLogin()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                 */
              ],
            ),
          )
        ],
      ),
    );
  }
}