import 'package:flutter/material.dart';
import 'package:videoplayer/screen/video/modal/videoModal.dart';

class VideoProvider extends ChangeNotifier {
  bool isPlay = true;
  int i = 0;

  void change() {
    isPlay = !isPlay;
    notifyListeners();
  }

  List<VideoModal> l1 = [
    VideoModal(
        Videos: 'assets/videos/tanjiro.mp4',
        name: "Tanjiro - HinokamiKagura",
        informaton: 'Tanjiro uses HinokamiKagura For First time.'),
    VideoModal(
        Videos: 'assets/videos/sukuna.mp4',
        name: "Sukuna Edit AMV",
        informaton: 'Sukuna AMV Edit Super Cool.'),
    VideoModal(
        Videos: 'assets/videos/zenitsu.mp4',
        name: "Zenitsu - Thunder Edit",
        informaton: 'Zenitsu First time Sleep Thunder breathing.'),
    VideoModal(
        Videos: 'assets/videos/rengoku.mp4',
        name: "Rengoku vs Akaza Edit",
        informaton: 'Rengoku vs Akaza AMV Edit looks Really Amazing.'),
    VideoModal(
        Videos: 'assets/videos/gojo.mp4',
        name: "Gojo-Edit AMV",
        informaton: 'Gojo Super cool Anime Video Edit.'),
    VideoModal(
        Videos: 'assets/videos/madara.mp4',
        name: "Madara - Gokakyu no Jutsu",
        informaton: 'Ghost of uchiha Uses his powerful Katon.'),
  ];
  List<VideoModal> img = [
    VideoModal(image: 'assets/images/tanjiro.jpg'),
    VideoModal(image: 'assets/images/Sukuna.jpg'),
    VideoModal(image: 'assets/images/zenitsu.jpg'),
    VideoModal(image: 'assets/images/Rengoku.jpg'),
    VideoModal(image: 'assets/images/gojo.jpg'),
    VideoModal(image: 'assets/images/madara.jpg'),
  ];
  List<VideoModal> sliderimg = [
    VideoModal(image: 'assets/images/1.png'),
    VideoModal(image: 'assets/images/2.png'),
    VideoModal(image: 'assets/images/3.jpg'),
    VideoModal(image: 'assets/images/Rengoku.jpg'),
    VideoModal(image: 'assets/images/4.jpg'),
    VideoModal(image: 'assets/images/5.jpg'),
    VideoModal(image: 'assets/images/6.jpg'),
    VideoModal(image: 'assets/images/8.jpg'),
    VideoModal(image: 'assets/images/12jpg'),
    VideoModal(image: 'assets/images/13.jpg'),
    VideoModal(image: 'assets/images/14.jpg'),
    VideoModal(image: 'assets/images/15.jpg'),
  ];
  List data2 = [];
  VideoModal? datapickk;

  void changepi(int index) {
    i = index;
    notifyListeners();
  }
}
