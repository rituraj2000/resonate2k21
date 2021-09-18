import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mentprism/const.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Text_Carousel extends StatelessWidget {
  const Text_Carousel({
    Key key,
    @required this.buttonCarouselController,
  }) : super(key: key);

  final CarouselController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: CarouselSlider.builder(
          itemCount: 3,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: 600,
            enlargeCenterPage: true,
            autoPlay: false,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (BuildContext, index, realIdx) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'questions random mefyssfk jebfjebf fef $index',
                    style: whitecolorBold14,
                  ),
                ),
                // TextBox(),
              ],
            );
          },
        )),
      ],
    );
  }
}
