import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/pagesOFapplication/loginrelated/page2.dart';
import '../code_widgets/text/ttext.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(flex: 1),
                Center(
                  child: SizedBox(
                    height: 110,
                    child: Iimage(urll: 'assets/images/Layer_5.png'),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Ttext(
                    note: 'Helios Sports Tech',
                    szz: 28,
                    wgt: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                const Center(child: Ttext(note: 'Here To Complete')),
                const Spacer(flex: 5),
                Button1(note: 'Get Started', page: const Page2()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
