import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageCard extends StatefulWidget {
  const ImageCard({Key? key}) : super(key: key);

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  File? image;

  Future<void> pickImage() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage == null) return;
      final imageTemp = File(pickedImage.path);
      setState(() {
        image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

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
            onTap: pickImage,
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
                    if (image == null) ...[
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
                    ] else
                      Image.file(
                        image!,
                        width: 0.8 * (MediaQuery.of(context).size.width),
                        height: 0.6 * (MediaQuery.of(context).size.height),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
