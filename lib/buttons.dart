import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btntext;
  final int btncolor;
  final int btntextcolor;
  final double btntextsize;
  final buttontapped;

  const Button({
    required this.btntext,
    required this.btncolor,
    required this.btntextcolor,
    required this.btntextsize, this.buttontapped,
    
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 8, left: 13),
      child: SizedBox(
        height: 57,
        width: 57,
        // ignore: deprecated_member_use
        child: GestureDetector(
          onTap: buttontapped,
          child: Text(
            btntext,
            style: TextStyle(
              color: Color(btntextcolor),
              fontSize: btntextsize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
