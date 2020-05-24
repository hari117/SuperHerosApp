import 'package:flutter/material.dart';

class LoadingImage extends StatelessWidget {
  String imgurl;

  LoadingImage(this.imgurl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CircularProgressIndicator(),
        ),
        Positioned.fill(
          child: Image.network(
            imgurl,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
