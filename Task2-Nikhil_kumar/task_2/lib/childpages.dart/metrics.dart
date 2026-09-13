import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/bodyweight.dart';
import 'package:task_2/childpages.dart/calories.dart';
import 'package:task_2/childpages.dart/tut.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import '../code_structure/giveinfo.dart';
import '../code_widgets/container/ccontainer.dart';

class Metrics extends StatelessWidget {
  const Metrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Ttext(note: 'METRICS', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              Ccontainer(
                gradiennt: AppColors.orange2Gradient,
                cchild: Giveinfo(
                  icon: 'assets/icons/Frame 626834.svg',
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
                gradiennt: AppColors.orange2Gradient,
                cchild: Giveinfo(
                  icon: 'assets/icons/Frame 626834.svg',
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
                gradiennt: AppColors.orange2Gradient,
                cchild: Giveinfo(
                  icon: 'assets/icons/Frame 626835.svg',
                  title: 'Goals',
                  discript: 'list of all goals created',
                ),
              ),
              Ccontainer(
                gradiennt: AppColors.orange2Gradient,
                cchild: Giveinfo(
                  icon: 'assets/icons/Frame 626835 (1).svg',
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
                gradiennt: AppColors.orange2Gradient,
                cchild: Giveinfo(
                  icon: 'assets/icons/Frame 626834.svg',
                  title: 'form tracking',
                  discript: 'track your form and technique',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
