import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spark_chat/const/const.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = screeenHeight(context);
    var width = screeenWidth(context);
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          style: GoogleFonts.itim(fontSize: 40),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Image.asset(
                'assets/images/wechat.png',
                height: height * 0.2,
                width: height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.lato(fontSize: 16),
                      hintText: 'Email or phone number',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.lato(fontSize: 16),
                      hintText: 'Password',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  if (emailController.text.isEmpty) {
                    VxToast.show(context, msg: 'No Hello World');
                  } else {
                    VxToast.show(context, msg: 'Hello World');
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?   ",
                  style: GoogleFonts.lato(fontSize: 15),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.lato(
                        fontSize: 19,
                        color: Colors.green,
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
