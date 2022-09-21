import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/video/modal/videoModal.dart';
import 'package:videoplayer/screen/video/provider/videoProvider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  VideoProvider? protrue;
  VideoProvider? profalse;

  @override
  Widget build(BuildContext context) {
    protrue = Provider.of<VideoProvider>(context, listen: true);
    profalse = Provider.of<VideoProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4f4f4f),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CarouselSlider.builder(
              itemCount: profalse!.img.length,
              itemBuilder: (context, index, _) {
                return Image.asset(
                  '${profalse!.sliderimg[index].image}',
                  fit: BoxFit.cover,
                );
              },
              options: CarouselOptions(
                onPageChanged: (index ,_){
                  profalse!.changepi(index);
                },
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true),
            ),
            SizedBox(
              height: 15,
            ),
            DotsIndicator(
              dotsCount: protrue!.sliderimg.length,
              position: protrue!.i.toDouble(),
              decorator: DotsDecorator(
                  activeColor: Color(0xff000000), color: Color(0xff9f9f9f)),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profalse!.l1.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      profalse!.datapickk = VideoModal(
                        Videos: profalse!.l1[index].Videos,
                        name: profalse!.l1[index].name,
                        informaton: profalse!.l1[index].informaton,
                      );
                      Navigator.pushNamed(context, 'play');
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${index + 1}. ${profalse!.l1[index].name}",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffffffff)),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 205,
                          child: Image.asset("${profalse!.img[index].image}"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
