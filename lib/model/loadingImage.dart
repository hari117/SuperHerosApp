//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:flutter/material.dart';
//
//import 'models.dart';
//
//class LoadingImage extends StatefulWidget {
//  String imgPath;
//  Function loadedCallback;
//
//  LoadingImage(this.imgPath, this.loadedCallback);
//
//  @override
//  _LoadingImageState createState() => _LoadingImageState();
//}
//
//class _LoadingImageState extends State<LoadingImage> {
//  bool isLoading = true;
//  bool isStateChanged = false;
//
//  @override
//  void initState() {
//    super.initState();
//    setState(() {});
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: [
//        loader(),
//        Positioned.fill(child: loadingImg()),
//      ],
//    );
////    return loadingImg(widget.imgPath);
//  }
//
//  loadingImg() {
//    return Opacity(
//      opacity: isLoading ? 0 : 1,
//      child: Image.network(
//        widget.imgPath,
//        fit: BoxFit.cover,
//        loadingBuilder: _imageLoaded,
//      ),
//    );
//  }
//
//  loader() {
//    return Center(
//      child: CircularProgressIndicator(),
//    );
//  }
//
//  Widget _imageLoaded(_, Widget child, ImageChunkEvent progress) {
//    if (progress == null) {
//      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//        if (isStateChanged == false) {
//          if (super.mounted) {
//            setState(() {});
//            widget.loadedCallback();
//            isStateChanged = true;
//          }
//        }
//      });
//      isLoading = false;
//      return child;
//    }
//    return SizedBox();
//  }
//}
