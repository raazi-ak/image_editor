import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
                width: 0.8 * (MediaQuery.of(context).size.width),
                height: 0.6 * (MediaQuery.of(context).size.height),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Color(0xFF25251f),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.add_circle_outline_rounded,
                        size: 86.0,
                        color: Color.fromARGB(255, 58, 58, 36),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Pick an image',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 28.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 58, 58, 36),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
