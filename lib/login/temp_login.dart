import 'package:flutter/material.dart';

import '../home_page.dart';
import '../register/register.dart';

class TempLogin extends StatefulWidget {
  const TempLogin({Key? key}) : super(key: key);

  @override
  _TempLoginState createState() => _TempLoginState();

}
class _TempLoginState extends State<TempLogin> {

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
              "Sign In",
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
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.indigoAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 130, vertical: 13)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      "Login",
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
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 12),
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
                          "Continue With Facebook ", textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                    alignment: Alignment.center,
                        child: const Text(
                          "Don't have an account ?", textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    height: 35,
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                        child: const Text(
                          "Sign Up", textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                    ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Your Password?", textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text("Home Screen"),
      ),
    );
  }
}