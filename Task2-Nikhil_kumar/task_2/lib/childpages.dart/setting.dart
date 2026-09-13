import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/listtileforsetting.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF121212),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Ttext(
          note: 'SETTINGS',
          szz: 20,
          wgt: FontWeight.bold,
          ccolor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Column(
                  children: [
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (5).svg',
                      txt: Ttext(
                        note: ' Account',
                        szz: 20,
                        wgt: FontWeight.bold,
                      ),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (6).svg',
                      txt: Ttext(
                        note: ' Password',
                        szz: 20,
                        wgt: FontWeight.bold,
                      ),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722.svg',
                      txt: Ttext(note: 'Help', szz: 20, wgt: FontWeight.bold),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (4).svg',
                      txt: Ttext(
                        note: 'Notification',
                        szz: 20,
                        wgt: FontWeight.bold,
                      ),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (1).svg',
                      txt: Ttext(
                        note: 'Feedback',
                        szz: 20,
                        wgt: FontWeight.bold,
                      ),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (2).svg',
                      txt: Ttext(
                        note: 'Feedback',
                        szz: 20,
                        wgt: FontWeight.bold,
                      ),
                    ),
                    Divider(height: 35, color: Colors.white12),
                    Listtileforsetting(
                      icon: 'assets/icons/Frame 626722 (3).svg',
                      txt: Ttext(note: 'Logout', szz: 20, wgt: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
