import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/iimage.dart';
// import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/loginrelated/page3.dart';
// import 'package:task_2/pagesOFapplication/homepage.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(),
                child: Iimage(urll: 'assets/images/Layer_5.png'),
              ),
              SizedBox(height: 15),
              Center(
                child: Column(
                  children: [
                    Ttext(
                      note: 'Create an Account ',
                      szz: 20,
                      ccolor: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Ttext(
                        note: 'Account information ',
                        szz: 14,
                        ccolor: Colors.white,
                        wgt: FontWeight.w600,
                      ),
                      SizedBox(height: 5),
                      Container(height: 5, width: 190, color: Colors.orange),
                    ],
                  ),
                  VerticalDivider(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Ttext(
                        note: 'biodata information',
                        szz: 14,
                        ccolor: Colors.white,
                        wgt: FontWeight.w600,
                      ),
                      SizedBox(height: 5),
                      Container(height: 5, width: 190, color: Colors.white),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Ttext(note: ' Username', ccolor: Colors.white),
              Ttextfield(
                hinttext: 'Enter your Name',
                icon: Icons.person_outlined,
              ),
              const SizedBox(height: 15),
              Ttext(note: 'Email', ccolor: Colors.white),
              Ttextfield(hinttext: 'Enter email', icon: Icons.email_outlined),
              const SizedBox(height: 15),
              Ttext(note: 'Password', ccolor: Colors.white),
              Ttextfield(hinttext: 'Enter password', icon: Icons.lock_outline),
              const SizedBox(height: 15),
              Ttext(note: 'confirm Password', ccolor: Colors.white),
              Ttextfield(
                hinttext: 'Enter password',
                icon: Icons.lock_outline_rounded,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Button1(note: 'Continue', page: Page3()),
            ],
          ),
        ),
      ),
    );
  }
}
