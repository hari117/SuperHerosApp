import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'models.dart';

class LoadingImage extends StatefulWidget {
  String imgPath;

  LoadingImage(this.imgPath);

  @override
  _LoadingImageState createState() => _LoadingImageState();
}

class _LoadingImageState extends State<LoadingImage> {
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return loadingImg(widget.imgPath);
  }

  loadingImg(String imageUrl) {
    return Image.network(imageUrl, fit: BoxFit.cover, loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
      if (loadingProgress == null) {
        print("image is loaded");

        return child;
      } else {
        print("image not loading");

        return progressBar(child, loadingProgress);
      }
    });
  }

  Widget progressBar(Widget child, ImageChunkEvent loadingProgress) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  fastLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
