import 'package:flutter/material.dart';
import 'package:task_2/pagesOFapplication/loginrelated/page2.dart';
import '../code_structure/iimage.dart';
import '../code_widgets/text/ttext.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 35, 34, 34),
      body: SafeArea(
        // for notch and boundaary safety...
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          children: [
            SizedBox(height: 40),
            Iimage(
              urll: 'assets/images/applogogym-removebg-preview.png',
              size: 8,
            ),
            const SizedBox(height: 200),
            Center(
              child: Ttext(
                note: 'WELCOME TO BRO CODE FITNESS ',
                szz: 17,
                ccolor: const Color.fromARGB(255, 223, 223, 223),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 158, 55),
                ),
                child: Ttext(
                  note: 'Get Started ->',
                  szz: 19,
                  ccolor: const Color.fromARGB(255, 55, 48, 48),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Page2()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
