import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NewHintPageWidget extends StatefulWidget {
  const NewHintPageWidget({Key key}) : super(key: key);

  @override
  _NewHintPageWidgetState createState() => _NewHintPageWidgetState();
}

class _NewHintPageWidgetState extends State<NewHintPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEFAE9D),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'GAME OVER: here new hints on your match',
                style: FlutterFlowTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
