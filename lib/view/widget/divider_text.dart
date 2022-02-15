import 'package:flutter/material.dart';

class DividerAndText extends StatelessWidget {
  double? indent;
  double? endIndent;
  double? thickness;
  String? text;
  DividerAndText({ Key? key ,this.indent,this.endIndent, this.thickness, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
          Expanded(
            child: Divider(
                    indent: indent ?? 20.0,
                    endIndent: endIndent??10.0,
                    thickness: thickness??1,
                  ),
          ),
          Text(
              "$text",
              style: const TextStyle(color: Colors.black),
          ),
          Expanded(
              child: Divider(
                      indent: endIndent??10.0,
                      endIndent: indent??20.0,
                      thickness: 1,
              ),
          ),
    ],
    );
  }
}