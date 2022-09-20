import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/video/provider/videoProvider.dart';
import 'package:videoplayer/screen/video/view/videoPlay.dart';
import 'package:videoplayer/screen/video/view/videoScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => VideoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => VideoScreen(),
          'play': (context) => Player(),
        },
      ),
    ),
  );
}
