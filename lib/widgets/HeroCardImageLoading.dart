import 'package:flutter/material.dart';

class LoadingImage extends StatefulWidget {
  String imgurl;
  Function callBack;

  @override
  _LoadingImageState createState() => _LoadingImageState();

  LoadingImage(this.imgurl, this.callBack);
}

class _LoadingImageState extends State<LoadingImage> {
  bool isStartedLoading = false;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.imgurl,
      loadingBuilder: (context, child, ImageChunkEvent progress) {
        if (progress != null) {
          isStartedLoading = true;
        }

        if (progress == null && isStartedLoading == true) {
          widget.callBack();
          return child;
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
