import 'package:flutter/material.dart';
import 'package:health_care/style.dart';

class ServicesItem extends StatefulWidget {
  const ServicesItem({super.key, required this.name, required this.imagePath});

  final String name;
  final String imagePath;

  @override
  State<ServicesItem> createState() => _ServicesItemState();
}

class _ServicesItemState extends State<ServicesItem> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          hover = true;
        });
      },
      onExit: (event) {
        setState(() {
          hover = false;
        });
      },
      child: Container(
        height: 300,
        width: 300,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    (hover)
                        ? Colors.black.withOpacity(0.5)
                        : Colors.black.withOpacity(0.3),
                  ])),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  widget.name,
                  style: bold16.copyWith(color: Colors.white),
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
