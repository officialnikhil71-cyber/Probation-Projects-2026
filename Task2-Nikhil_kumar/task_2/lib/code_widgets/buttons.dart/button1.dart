import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Button1 extends StatelessWidget {
  final String note;
  final Widget? child;
  final Widget? page;
  final VoidCallback? onTap;
  final Color colour;
  final Color? cl; // Border color
  final Color txtcolor;

  const Button1({
    super.key,
    required this.note,
    this.child,
    this.page,
    this.onTap,
    this.colour = AppColors.primary,
    this.cl,
    this.txtcolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colour,
      borderRadius: BorderRadius.circular(7),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (onTap != null) {
            onTap!();
          } else if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page!),
            );
          }
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: cl != null ? Border.all(color: cl!, width: 1.5) : null,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (child != null) ...[child!, const SizedBox(width: 8)],
              Ttext(
                note: note,
                ccolor: txtcolor,
                szz: 20,
                wgt: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
