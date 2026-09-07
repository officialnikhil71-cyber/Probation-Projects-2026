import 'package:flutter/material.dart';

class Calorieshelper extends StatelessWidget {
  final double progres;
  final String calories;
  final String target;
  final double? heigt;
  final double? width;
  final double? heigtstack;
  final double? widthstack;
  final double? strokewitdth;
  final bool? icoN;

  const Calorieshelper({
    super.key,
    this.progres = 0.85,
    this.calories = '650',
    this.target = '800 kcal',
    this.heigt,
    this.heigtstack,
    this.width,
    this.widthstack,
    this.strokewitdth,
    this.icoN,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: heigt,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: heigtstack,
              height: widthstack,
              child: CircularProgressIndicator(
                value: progres,
                strokeWidth: strokewitdth,
                backgroundColor: Colors.white10,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                strokeCap: StrokeCap.round,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icoN == true)
                  const Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                    size: 24,
                  ),
                const SizedBox(height: 4),
                Text(
                  calories,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'of $target',
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
