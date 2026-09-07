import 'package:flutter/material.dart';
import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/homepage.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
                left: 120,
                right: 120,
                top: 30,
                bottom: 20,
              ),
              child: Iimage(urll: 'assets/images/account.png', size: 16),
            ),
            Center(
              child: Ttext(
                note: 'Create an Account !',
                szz: 20,
                ccolor: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Ttext(
              note: '  Account information🧾',
              szz: 22,
              ccolor: Colors.white,
              wgt: FontWeight.w600,
            ),
            const SizedBox(height: 30),
            Ttext(note: '    Username', ccolor: Colors.white),
            Ttextfield(
              hinttext: 'Enter your Name',
              icon: Icons.person_outlined,
            ),
            const SizedBox(height: 10),
            Ttext(note: '    Email', ccolor: Colors.white),
            Ttextfield(hinttext: 'Enter email', icon: Icons.email_outlined),
            const SizedBox(height: 10),
            Ttext(note: '    Password', ccolor: Colors.white),
            Ttextfield(hinttext: 'Enter password', icon: Icons.lock_outline),
            const SizedBox(height: 10),
            Ttext(note: '    confirm Password', ccolor: Colors.white),
            Ttextfield(
              hinttext: 'Enter password',
              icon: Icons.lock_outline_rounded,
            ),
            const SizedBox(height: 50),
            Ttext(
              note: '  Personal Informatio🧾',
              ccolor: Colors.white,
              szz: 22,
              wgt: FontWeight.w600,
            ),
            const SizedBox(height: 30),
            Ttext(note: '    First Name', ccolor: Colors.white),
            Ttextfield(hinttext: 'Enter your first Name', icon: Icons.person),
            const SizedBox(height: 10),
            Ttext(note: '    Last Name', ccolor: Colors.white),
            Ttextfield(hinttext: 'Enter last name', icon: Icons.person),
            const SizedBox(height: 10),
            Ttext(note: '    Enter Location', ccolor: Colors.white),
            Ttextfield(
              hinttext: 'Enter location',
              icon: Icons.location_on_outlined,
            ),
            const SizedBox(height: 10),
            Ttext(note: '    City', ccolor: Colors.white),
            Ttextfield(
              hinttext: 'Enter city',
              icon: Icons.location_on_outlined,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 184, 112),
                ),
                child: Ttext(
                  note: 'Create Your Account',
                  ccolor: Colors.black,
                  szz: 22,
                  wgt: FontWeight.w700,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
