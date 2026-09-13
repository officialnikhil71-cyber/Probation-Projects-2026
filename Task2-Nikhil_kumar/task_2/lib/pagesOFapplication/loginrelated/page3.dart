import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/iimage.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/homepage.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              // const SizedBox(height: 30),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(),
                child: Iimage(urll: 'assets/images/Layer_5.png'),
              ),
              SizedBox(height: 16),
              Center(
                child: Ttext(
                  note: 'Create an Account ',
                  szz: 20,
                  ccolor: Colors.white,
                  wgt: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(
                          note: 'Account information',
                          szz: 14,
                          ccolor: Colors.white,
                          wgt: FontWeight.w600,
                        ),
                        const SizedBox(height: 5),
                        Container(height: 4, color: Colors.orange),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(
                          note: 'Biodata information',
                          szz: 14,
                          ccolor: Colors.white,
                          wgt: FontWeight.w600,
                        ),
                        const SizedBox(height: 5),
                        Container(height: 4, color: Colors.orange),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(note: 'First Name', ccolor: Colors.white),
                        const SizedBox(height: 8),
                        Ttextfield(hinttext: 'First name', icon: Icons.person),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(note: 'Last Name', ccolor: Colors.white),
                        const SizedBox(height: 8),
                        Ttextfield(hinttext: 'Last name', icon: Icons.person),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Ttext(note: 'Enter Location', ccolor: Colors.white),
              const SizedBox(height: 8),
              Ttextfield(
                hinttext: 'Enter location',
                icon: Icons.location_on_outlined,
              ),

              const SizedBox(height: 16),
              Ttext(note: 'City', ccolor: Colors.white),
              const SizedBox(height: 8),
              Ttextfield(
                hinttext: 'Enter city',
                icon: Icons.location_city_outlined,
              ),

              const SizedBox(height: 16),
              Ttext(note: 'Date of Birth', ccolor: Colors.white),
              const SizedBox(height: 8),
              Ttextfield(
                hinttext: 'Enter D.O.B',
                icon: Icons.date_range_outlined,
              ),
              const SizedBox(height: 24),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Button1(note: 'Create Account', page: Homepage()),
            ],
          ),
        ),
      ),
    );
  }
}
