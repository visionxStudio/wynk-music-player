import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  const CustomButton({
    @required this.icon,
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: defaultSize * 5,
          width: defaultSize * 5,
          decoration: BoxDecoration(
            color: Color(0xffC4C4C4).withOpacity(0.35),
            borderRadius: BorderRadius.circular(defaultSize * 1.5),
          ),
          child: Icon(
            icon,
            color: Color(0xffEF6060),
            size: defaultSize * 3.2,
          ),
        ),
      ],
    );
  }
}
