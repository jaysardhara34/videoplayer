import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/screen/video/provider/videoProvider.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  VideoProvider? protrue;
  VideoProvider? profalse;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    videoPlayerController = VideoPlayerController.asset(
        '${Provider.of<VideoProvider>(context, listen: false).datapickk!.Videos}');
    videoPlayerController?.initialize().then((value) => setState(() {}));
    chewieController = ChewieController(
        autoPlay: true, videoPlayerController: videoPlayerController!);
  }

  Widget build(BuildContext context) {
    protrue = Provider.of<VideoProvider>(context, listen: true);
    profalse = Provider.of<VideoProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff2d2d2d),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '${profalse!.datapickk!.name}',
          style: TextStyle(color: Color(0xffffffff), fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 205,
          child: Chewie(controller: chewieController!),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '${profalse!.datapickk!.informaton}',
            style: TextStyle(color: Color(0xffffffff), fontSize: 20),
          ),
        ),
      ]),
    ));
  }
}
