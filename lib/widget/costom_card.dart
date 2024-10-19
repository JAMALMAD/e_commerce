import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/utils/string_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Costomcard extends StatelessWidget {
  const Costomcard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.value,
  });

  final String title;
  final String price;
  final String imagePath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Card(
                elevation: 5,
                color: Color.fromARGB(255, 176, 128, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(imagePath),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.black
                          ),
                        ),
                         SizedBox(height: 8),
                        Text(
                          price,
                          style: StringStyle.h1(),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Card(
                        elevation: 2,
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "+",
                            style: StringStyle.h1(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      value,
                      style: StringStyle.h1(),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Card(
                        elevation: 2,
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            "-",
                            style: StringStyle.h1(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}


