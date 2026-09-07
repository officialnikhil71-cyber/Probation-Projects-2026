import 'package:flutter/material.dart';
import 'package:task_2/code_structure/listtileforsetting.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Ccontainer(
                shadow: true,
                cOlOr: const Color.fromARGB(255, 84, 76, 76),
                ccolor: const Color(0xFF1E1E1E),
                cchild: Column(
                  children: [
                    const SizedBox(height: 6),
                    Listtileforsetting(
                      icon: Icons.person_4_outlined,
                      txt: Ttext(
                        note: 'Account',
                        szz: 16,
                        wgt: FontWeight.w500,
                        ccolor: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                      color: Colors.white10,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Listtileforsetting(
                      icon: Icons.notifications_none_outlined,
                      txt: Ttext(
                        note: 'Notification',
                        szz: 16,
                        wgt: FontWeight.w500,
                        ccolor: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                      color: Colors.white10,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Listtileforsetting(
                      icon: Icons.help_center_outlined,
                      txt: Ttext(
                        note: 'Help',
                        szz: 16,
                        wgt: FontWeight.w500,
                        ccolor: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                      color: Colors.white10,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Listtileforsetting(
                      icon: Icons.email_outlined,
                      txt: Ttext(
                        note: 'Feedback',
                        szz: 16,
                        wgt: FontWeight.w500,
                        ccolor: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                      color: Colors.white10,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Listtileforsetting(
                      icon: Icons.bug_report_outlined,
                      txt: Ttext(
                        note: 'Report Bug',
                        szz: 16,
                        wgt: FontWeight.w500,
                        ccolor: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 30,
                      thickness: 0.6,
                      color: Colors.white10,
                      indent: 16,
                      endIndent: 16,
                    ),
                    Listtileforsetting(
                      icon: Icons.logout_rounded,
                      color: Colors.redAccent,
                      txt: Ttext(
                        note: 'Logout',
                        szz: 16,
                        wgt: FontWeight.w600,
                        ccolor: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
