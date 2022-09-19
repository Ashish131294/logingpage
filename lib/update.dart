import 'package:flutter/material.dart';

class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {

  TextEditingController tname=TextEditingController();
  TextEditingController temail=TextEditingController();

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("myimage/register.png"), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  "Create\nAccount",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 200, left: 20, right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Name",
                              labelText: "Name",
                              suffixIcon: Icon(Icons.account_circle),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Email",
                              suffixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)
                              ),
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
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)
                              ),
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
