import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userId = "user123";
  String password = "1234567";

  String givenUserId = "";
  String givenPassword = "";

  Future<void> _alertDialogBox(String error) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 30,
            content: Container(
              height: 60,
              alignment: Alignment.center,
              child: Text(
                error,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 20,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Close",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    )),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height - 50,
                  child: Column(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1587606607030-5e0716be2b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxNzA4Mjc2fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
                                fit: BoxFit.fill),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.white,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1, color: Colors.black12)),
                                    ),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 16,
                                          bottom: 16),
                                      child: Container(
                                        height: 36,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Login Account",
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blue.shade900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 16, right: 16, top: 18),
                                    height: 20,
                                    width: 308,
                                    child: Text(
                                      "Enter your registered user id and password to log in",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: Colors.blue.shade600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "User Id ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "*",
                                          style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            height: 28,
                                            margin:
                                                const EdgeInsets.only(top: 4),
                                            alignment: Alignment.centerRight,
                                            child: TextFormField(
                                              onChanged: (value) {
                                                givenUserId = value.toString();
                                              },
                                              decoration: InputDecoration(
                                                hintText: "Enter UserId",
                                                errorMaxLines: 1,
                                                hintStyle: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.grey,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color:
                                                          Colors.grey.shade400),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "Password ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "*",
                                          style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, left: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            height: 28,
                                            margin:
                                                const EdgeInsets.only(top: 4),
                                            alignment: Alignment.centerRight,
                                            child: TextFormField(
                                              onChanged: (value) {
                                                givenPassword =
                                                    value.toString();
                                              },
                                              decoration: InputDecoration(
                                                hintText: "Enter Password",
                                                errorMaxLines: 1,
                                                hintStyle: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.grey,
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color:
                                                          Colors.grey.shade400),
                                                ),
                                              ),
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]))),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (userId == givenUserId) {
                                  if (password == givenPassword) {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginSucess()));
                                  } else {
                                    _alertDialogBox(
                                        "UserId and Password Doesn't Match");
                                  }
                                } else {
                                  _alertDialogBox("Enter Correct User Id");
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 72, vertical: 32),
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.blue.shade500,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        )),
                  ]),
                ))));
  }
}

class LoginSucess extends StatefulWidget {
  const LoginSucess({Key? key}) : super(key: key);

  @override
  State<LoginSucess> createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1373489018/photo/encryption-your-data-digital-lock-hacker-attack-and-data-breach-big-data-with-encrypted.jpg?s=612x612&w=is&k=20&c=S3Br9FXdwps3FLl1AdyKJ7sdYauwlksCoqE-VU-yKtM="),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Expanded(flex:2,child: Container(
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: Colors.black12)),
            ),
            margin:
            EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                  bottom: 16),
              child: Container(
                height: 36,
                margin: const EdgeInsets.symmetric(
                    horizontal: 8),
                alignment: Alignment.center,
                child: Text(
                  "Successfully Logged In",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue.shade900),
                ),
              ),
            ),
          ),)
        ],
      ),
    ));
  }
}
