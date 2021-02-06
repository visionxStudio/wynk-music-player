// import 'package:flutter/material.dart';
// import 'package:wynk_music_player/config/size_config.dart';
// import 'package:wynk_music_player/widgets/custom_buttom_widget.dart';

// class Player extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     final defaultSize = SizeConfig.defaultSize;
//     return Scaffold(
//       backgroundColor: Color(0xffE5E5E5),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               TopBar(defaultSize: defaultSize),
//               SizedBox(
//                 height: defaultSize * 5,
//               ),
//               AlbumArt(),
//               SizedBox(
//                 height: defaultSize * 5,
//               ),
//               TitleArtist(defaultSize: defaultSize),
//               SizedBox(
//                 height: defaultSize * 5,
//               ),
//               // CustomSlider(defaultSize: defaultSize),
//               SizedBox(
//                 height: defaultSize * 5,
//               ),
//               ButtomActions(defaultSize: defaultSize),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ButtomActions extends StatelessWidget {
//   const ButtomActions({
//     Key key,
//     @required this.defaultSize,
//   }) : super(key: key);

//   final double defaultSize;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Icon(
//             Icons.shuffle_rounded,
//             color: Color(0xff636363),
//             size: 32.0,
//           ),
//           Icon(
//             Icons.skip_previous,
//             color: Color(0xff636363),
//             size: 32.0,
//           ),
//           Stack(
//             children: [
//               Container(
//                 height: defaultSize * 5,
//                 width: defaultSize * 5,
//                 decoration: BoxDecoration(
//                   color: Color(0xffEF6060),
//                   borderRadius: BorderRadius.circular(defaultSize * 1.5),
//                 ),
//                 child: Icon(
//                   Icons.play_arrow,
//                   color: Colors.white,
//                   size: defaultSize * 3.8,
//                 ),
//               ),
//             ],
//           ),
//           Icon(
//             Icons.skip_next,
//             color: Color(0xff636363),
//             size: 32.0,
//           ),
//           Icon(
//             Icons.volume_up,
//             color: Color(0xff636363),
//             size: 32.0,
//           ),
//         ],
//       ),
//     );
//   }
// }

// // class CustomSlider extends StatelessWidget {
// //   const CustomSlider({
// //     Key key,
// //     @required this.defaultSize,
// //   }) : super(key: key);

// //   final double defaultSize;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(16.0),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           CustomButton(
// //             icon: Icons.list_rounded,
// //             defaultSize: defaultSize,
// //           ),
// //           Container(
// //             width: MediaQuery.of(context).size.width * 0.6,
// //             child: Column(
// //               children: [
// //                 Container(
// //                   width: MediaQuery.of(context).size.width * 0.6,
// //                   child: SliderTheme(
// //                     data: SliderTheme.of(context).copyWith(
// //                       activeTrackColor: Color(0xffEF6060),
// //                       inactiveTrackColor: Color(0xffEA7878).withOpacity(0.38),
// //                       trackHeight: 3.0,
// //                       thumbColor: Color(0xffEF6060),
// //                       thumbShape:
// //                           RoundSliderThumbShape(enabledThumbRadius: 6.0),
// //                       overlayColor: Color(0xffEF6060).withAlpha(32),
// //                       overlayShape:
// //                           RoundSliderOverlayShape(overlayRadius: 14.0),
// //                     ),
// //                     child: Slider(
// //                       value: 0.38,
// //                       onChanged: (value) {},
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Text(
// //                         "1:53",
// //                         style: TextStyle(color: Color(0xffEF6060)),
// //                       ),
// //                       Text(
// //                         "1:53",
// //                         style: TextStyle(color: Color(0xffEF6060)),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           CustomButton(
// //             icon: Icons.add,
// //             defaultSize: defaultSize,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// class TitleArtist extends StatelessWidget {
//   const TitleArtist({
//     Key key,
//     @required this.defaultSize,
//   }) : super(key: key);

//   final double defaultSize;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             "Dil Bechara",
//             maxLines: 1,
//             overflow: TextOverflow.clip,
//             style: TextStyle(
//               color: Color(0xffEF6060).withOpacity(0.8),
//               fontSize: defaultSize * 2.8,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(
//             height: defaultSize * 0.8,
//           ),
//           Text(
//             "Arijit Singh",
//             maxLines: 1,
//             overflow: TextOverflow.clip,
//             style: TextStyle(
//                 color: Color(0xffEF6060).withOpacity(0.6),
//                 fontSize: defaultSize * 1.6),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class AlbumArt extends StatelessWidget {
//   const AlbumArt({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Color(0xffB45D2F).withOpacity(0.7),
//             spreadRadius: 3,
//             blurRadius: 29,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16.0),
//         child: Image.network(
//           "https://www.picclickimg.com/d/l400/pict/332845679904_/Bebe-Rexha-All-Your-Fault-Pt1-Poster-Album.jpg",
//           height: MediaQuery.of(context).size.height * 0.3,
//           width: MediaQuery.of(context).size.width * 0.7,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }

// class TopBar extends StatelessWidget {
//   const TopBar({
//     Key key,
//     @required this.defaultSize,
//   }) : super(key: key);

//   final double defaultSize;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CustomButton(
//             defaultSize: defaultSize,
//             icon: Icons.arrow_back,
//           ),
//           Text(
//             "Now Playing   ",
//             style: TextStyle(
//               color: Color(0xffEF6060),
//               fontSize: defaultSize * 2.4,
//             ),
//           ),
//           Icon(
//             Icons.favorite,
//             color: Colors.red,
//           ),
//         ],
//       ),
//     );
//   }
// }
