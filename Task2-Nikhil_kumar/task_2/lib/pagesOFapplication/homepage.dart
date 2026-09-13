import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/metrics.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/progressbar.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/pagesOFapplication/workoutpage.dart';
import '../code_widgets/banners.dart';
import '../code_widgets/text/ttext.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsets defaultPadding = EdgeInsets.symmetric(horizontal: 20);

    final ButtonStyle actionButtonStyle = TextButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(),
                      child: Iimage(urll: 'assets/images/Layer_5.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bluetooth_outlined,
                          color: AppColors.primary,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 0),
                child: SizedBox(
                  height: 112,
                  child: Banners(imageUrl: 'assets/images/Frame 626849.png'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(padding: defaultPadding, child: Progressbar()),
              const SizedBox(height: 20),
              Padding(
                padding: defaultPadding,
                child: Container3FromJson(
                  workoutId: 1,
                  date: 'Your next Workout',
                  trailingAction: TextButton(
                    style: actionButtonStyle,
                    onPressed: () {},
                    child: const Ttext(
                      note: 'Start workout',
                      szz: 12,
                      wgt: FontWeight.bold,
                      ccolor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: defaultPadding,
                child: Container3FromJson(
                  workoutId: 1,
                  date: 'Your last Workout',
                  trailingAction: TextButton(
                    style: actionButtonStyle,
                    onPressed: () {},
                    child: const Ttext(
                      note: 'redo workout',
                      szz: 12,
                      wgt: FontWeight.bold,
                      ccolor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: defaultPadding,
                child: SizedBox(
                  height: 50,
                  child: Button1(
                    note: 'Create new Plan',
                    page: Workoutpage(),
                    child: const Icon(Icons.add, size: 34, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: defaultPadding,
                child: SizedBox(
                  height: 50,
                  child: Button1(
                    cl: AppColors.primary,
                    note: 'See metrics',
                    txtcolor: AppColors.primary,
                    colour: Colors.transparent,
                    page: Metrics(),
                    child: const Icon(
                      Icons.signal_cellular_alt_sharp,
                      size: 32,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Floatingnavigationbar(),
    );
  }
}
