import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/bodyweight.dart';
import 'package:task_2/childpages.dart/calories.dart';
import 'package:task_2/childpages.dart/tut.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import '../code_structure/giveinfo.dart';
import '../code_widgets/container/ccontainer.dart';

class Metrics extends StatelessWidget {
  const Metrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Ttext(note: 'METRICS', ccolor: Colors.redAccent, szz: 22),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Ccontainer(
              ccolor: const Color.fromARGB(255, 78, 74, 74),
              cchild: Giveinfo(
                icon: Icons.fireplace_outlined,
                title: 'Body Weight',
                discript: 'input weight weekly to track process',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bodyweight()),
                  );
                },
              ),
            ),
            Ccontainer(
              ccolor: const Color.fromARGB(255, 78, 74, 74),
              cchild: Giveinfo(
                icon: Icons.fireplace_outlined,
                title: 'Calories burned',
                discript: 'based on distance and weight',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calories()),
                  );
                },
              ),
            ),
            Ccontainer(
              ccolor: const Color.fromARGB(255, 78, 74, 74),
              cchild: Giveinfo(
                icon: Icons.flag_circle_outlined,
                title: 'Goals',
                discript: 'list of all goals created',
              ),
            ),
            Ccontainer(
              ccolor: const Color.fromARGB(255, 78, 74, 74),
              cchild: Giveinfo(
                icon: Icons.access_time_outlined,
                title: 'T.U.T',
                discript: 'time under tension',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tut()),
                  );
                },
              ),
            ),
            Ccontainer(
              ccolor: const Color.fromARGB(255, 78, 74, 74),
              cchild: Giveinfo(
                icon: Icons.track_changes_outlined,
                title: 'form tracking',
                discript: 'track your form and technique',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
