import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/iimage.dart';
// import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/homepage.dart';
import 'package:task_2/pagesOFapplication/loginrelated/page1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            children: [
              SizedBox(height: 15),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(),
                child: Iimage(urll: 'assets/images/Layer_5.png'),
              ),
              SizedBox(height: 15),
              Center(
                child: Ttext(
                  note: 'Login to Your Account',
                  szz: 25,
                  wgt: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Ttext(note: '    Email', ccolor: Colors.white),
              const SizedBox(height: 5),
              Ttextfield(
                hinttext: 'Enter your email address',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),
              Ttext(note: '    Password', ccolor: Colors.white),
              const SizedBox(height: 5),
              Ttextfield(
                hinttext: 'Enter your password',
                icon: Icons.lock_outline_rounded,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  child: Ttext(
                    note: ' Forgot Password ?',
                    ccolor: Colors.white,
                    szz: 16,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 40),
              Button1(note: 'Login', page: Homepage()),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ttext(note: "Don't have an Account ?", ccolor: Colors.white),
                  TextButton(
                    child: Ttext(
                      note: 'Sign UP',
                      ccolor: Colors.redAccent,
                      szz: 16,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(child: Ttext(note: 'Alternativley Login with')),
              SizedBox(height: 25),
              Button1(
                note: 'google',
                colour: Colors.transparent,
                cl: Colors.orange,
                child: FaIcon(
                  FontAwesomeIcons.apple,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: 10),
              Button1(
                note: 'google',
                colour: Colors.transparent,
                cl: Colors.orange,
                child: FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
