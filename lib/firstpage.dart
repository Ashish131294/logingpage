import 'package:flutter/material.dart';
import 'package:loginpage/update.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("myimage/login.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 120),
                child: Text(
                  "Welcome\nBack",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                      left: 20,
                      right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Email",
                              suffixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: visibility,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Password",
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visibility = !visibility;
                                    });
                                  },
                                  icon: Icon(visibility
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Color(0xff4c505b)),
                              ))
                          /*TextButton(onPressed: () {

                          }, child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                color: Color(0xff4c505b)),
                          ))*/
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {

                          }, child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 25,
                                color: Color(0xff4c505b)),
                          ))
                        ],
                      ),
                      Center(child: Text("OR",style: TextStyle(fontSize: 10),)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return update();
                                },));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Color(0xff4c505b)),
                              )
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
