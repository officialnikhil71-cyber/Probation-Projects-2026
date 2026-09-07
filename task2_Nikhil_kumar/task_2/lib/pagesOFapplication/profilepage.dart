import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/setting.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/code_structure/iimage.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.redAccent, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(
          note: 'Profile',
          szz: 22,
          ccolor: Colors.white,
          wgt: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 10),
          children: [
            SizedBox(
              height: 190,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF23262F),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1517838277536-f5f99be501cd?q=80&w=800",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/images/image1.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Ttext(
                note: 'NIKHIL KUMAR',
                ccolor: Colors.white,
                szz: 20,
                wgt: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Center(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          const Ttext(
                            note: 'Picture',
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.videocam_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          const Ttext(
                            note: 'Video',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.grid_view_rounded, color: Colors.orange, size: 24),
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
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1,
                children: const [
                  Iimage(urll: 'assets/images/workout_deadlift.png', size: 10),
                  Iimage(
                    urll: 'assets/images/workout_kettlebell.png',
                    size: 10,
                  ),
                  Iimage(urll: 'assets/images/workout_dumbbells.png', size: 10),
                  Iimage(
                    urll: 'assets/images/workout_battle_ropes.png',
                    size: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
