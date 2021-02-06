import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wynk_music_player/config/size_config.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            TopBar(height: height, defaultSize: defaultSize),
            AlbumArt(height: height),
            Container(
              height: height * .25,
              decoration: BoxDecoration(
                color: Color(0xFF763afe),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(
                    35.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  TitleAndFav(defaultSize: defaultSize),
                  ToolBar(defaultSize: defaultSize),
                  CustomSlider(defaultSize: defaultSize),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolBar extends StatelessWidget {
  const ToolBar({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.repeat,
            color: Colors.white,
          ),
          Icon(
            Icons.skip_previous,
            color: Colors.white,
          ),
          Container(
            height: defaultSize * 4.5,
            width: defaultSize * 4.5,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              Icons.pause,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.skip_next,
            color: Colors.white,
          ),
          Icon(
            Icons.shuffle,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class TitleAndFav extends StatelessWidget {
  const TitleAndFav({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.favorite_outline,
            color: Colors.white,
          ),
          Column(
            children: [
              Text(
                "All Your Fault",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultSize * 2.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: defaultSize * 0.8,
              ),
              Text(
                "Bebe Rexha",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: defaultSize * 1.6,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Icon(
            Icons.playlist_add,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class AlbumArt extends StatelessWidget {
  const AlbumArt({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.64,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.height * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF763afe).withOpacity(0.4),
                  spreadRadius: -6,
                  blurRadius: 37,
                  offset: Offset(13, 13),
                ),
              ],
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://www.picclickimg.com/d/l400/pict/332845679904_/Bebe-Rexha-All-Your-Fault-Pt1-Poster-Album.jpg",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.height,
    @required this.defaultSize,
  }) : super(key: key);

  final double height;
  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.11,
      // color: Color(0xFF763afe),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Transform.rotate(
              angle: 90 * pi / 180,
              child: GestureDetector(
                onTap: () {
                  print("Going back");
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ),
            ),
            Text(
              "Now Playing",
              style: TextStyle(
                fontSize: defaultSize * 2.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.timer,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6.0,
        left: 40.0,
        right: 40.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.796,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xfffdcf7a),
                      inactiveTrackColor: Colors.black.withOpacity(0.6),
                      trackHeight: 1.2,
                      thumbColor: Color(0xfffdcf7a),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 4.0),
                      overlayColor: Color(0xfffdcf7a).withAlpha(32),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 12.0),
                    ),
                    child: Slider(
                      value: 0.56,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2:04",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: defaultSize * 1.4,
                        ),
                      ),
                      Text(
                        "2:55",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: defaultSize * 1.4,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
