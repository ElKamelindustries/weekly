import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ThreeDotsWidget extends StatefulWidget {
  const ThreeDotsWidget({Key key}) : super(key: key);

  @override
  _ThreeDotsWidgetState createState() => _ThreeDotsWidgetState();
}

class _ThreeDotsWidgetState extends State<ThreeDotsWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-0.85, 0),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFEA9A8B),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Lottie.asset(
            'assets/lottie_animations/50817-three-dots.json',
            width: 30,
            height: 130,
            fit: BoxFit.fitHeight,
            animate: true,
          ),
        ),
      ),
    );
  }
}
