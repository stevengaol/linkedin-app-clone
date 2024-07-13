import 'package:flutter/material.dart';

Widget columnSingleButton({
  required String name,
  required String iconimage,
  required Color color,
}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min, // Tambahkan ini untuk menghindari column memperbesar
      children: [
        Container(
          width: 20,
          height: 20,
          child: Image.asset(iconimage, color: color),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        )
      ],
    ),
  );
}
