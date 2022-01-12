import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Spacer10Widget extends StatefulWidget {
  const Spacer10Widget({Key key}) : super(key: key);

  @override
  _Spacer10WidgetState createState() => _Spacer10WidgetState();
}

class _Spacer10WidgetState extends State<Spacer10Widget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 100,
        height: 10,
        decoration: BoxDecoration(),
      ),
    );
  }
}
