import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon, @required this.onPressed, this.onLongPress});
  final IconData icon;
  final Function onPressed;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Color(0xFF444560),
      onPressed: onPressed,
      onLongPress: onLongPress,
    );
  }
}
