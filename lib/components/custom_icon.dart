import 'package:flutter/material.dart';


class CustomIconButton extends StatelessWidget {
  CustomIconButton(this.customIcon, this.onClick);
  final IconData customIcon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(customIcon),
    );
  }
}
