import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/setting.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: AppColors.primary,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Ttext(
          note: 'Profile',
          szz: 22,
          ccolor: Colors.white,
          wgt: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.only(
              top: 10,
              right: 7,
              bottom: 10,
              left: 7,
            ),
            children: [
              SizedBox(
                height: 180,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 140,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF23262F),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Rectangle 41.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 42,
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage(
                            'assets/images/profilepicture2.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Center(
                child: Ttext(
                  note: 'Nick Barrow',
                  ccolor: Colors.white,
                  szz: 20,
                  wgt: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ttext(
                      note: 'Workout streak : ',
                      szz: 13,
                      ccolor: Colors.white70,
                    ),
                    Ttext(
                      note: '11 days 🔥',
                      szz: 13,
                      wgt: FontWeight.bold,
                      ccolor: Colors.orange,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white24),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Ttext(
                              note: 'Post Pump Picture',
                              szz: 12,
                              ccolor: Colors.white,
                              wgt: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white24),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_camera_back_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Ttext(
                              note: 'Post Pr Video',
                              szz: 12,
                              ccolor: Colors.white,
                              wgt: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.grid_view_rounded,
                      color: Colors.orange,
                      size: 24,
                    ),
                    Icon(
                      Icons.video_collection_outlined,
                      color: Colors.white54,
                      size: 24,
                    ),
                    Icon(
                      Icons.bookmark_border_rounded,
                      color: Colors.white54,
                      size: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Rectangle 45.png',
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) =>
                            Container(color: Colors.white12),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Rectangle 46.png',
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) =>
                            Container(color: Colors.white12),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Rectangle 48.png',
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) =>
                            Container(color: Colors.white12),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Rectangle 47.png',
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) =>
                            Container(color: Colors.white12),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Floatingnavigationbar(),
    );
  }
}
