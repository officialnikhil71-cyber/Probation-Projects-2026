import 'package:flutter/material.dart';
import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/loginrelated/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 110,
                right: 110,
                top: 30,
                bottom: 20,
              ),
              child: Iimage(urll: 'assets/images/gym.png', size: 16),
            ),
            Center(
              child: Ttext(
                note: 'Login to Your Account',
                szz: 20,
                ccolor: Colors.white,
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
            TextButton(
              child: Ttext(
                note: 'Forgot Password ?',
                ccolor: Colors.white,
                szz: 16,
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 184, 112),
                ),
                child: Ttext(
                  note: 'LOGIN',
                  ccolor: Colors.black,
                  szz: 22,
                  wgt: FontWeight.w700,
                ),
                onPressed: () {},
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
