import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image1.png"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter
            )
        ),
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height/2.15,
              ),
              TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "CentraleSansRegular"
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffd3dde4),
                            width: 3
                        )
                    ),
                    labelText: "Email",
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: "CentraleSansRegular"
                    )
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "CentraleSansRegular"
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffd3dde4),
                            width: 3
                        )
                    ),
                    labelText: "Password",
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: "CentraleSansRegular"
                    )
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: 330,
                height: 60,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff471a91),
                      Color(0xff3cabff)
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "login",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "CentraleSansRegular",
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Center(child: Text("Forgot Password?",
                style: TextStyle(
                    fontFamily: 'CentraleSansRegular',
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                ),)),
              const SizedBox(height: 20,),
              MaterialButton(
                minWidth: 330,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                        color: Color(0xff00b4ff),
                        width: 3
                    )
                ),
                onPressed: (){},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(SimpleIcons.facebook,
                      color: Color(0xff00b4ff),
                      size: 40,),
                    Text(
                      "Connect with Facebook",
                      style: TextStyle(
                          color: Color(0xff00b4ff),
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              MaterialButton(
                minWidth: 330,
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                        color: Color(0xff501396),
                        width: 3
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text(
                      "Continue as Guest",
                      style: TextStyle(
                          color: Color(0xff501396),
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

