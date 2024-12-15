import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar({required final String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    leading: Center(
      child: SvgPicture.asset('assets/images/arrow.svg'),
    ),
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}
