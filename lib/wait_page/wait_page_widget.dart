import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../would_you_rather2/would_you_rather2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WaitPageWidget extends StatefulWidget {
  const WaitPageWidget({Key key}) : super(key: key);

  @override
  _WaitPageWidgetState createState() => _WaitPageWidgetState();
}

class _WaitPageWidgetState extends State<WaitPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEFAE9D),
      body: SafeArea(
        child: InkWell(
          onTap: () async {
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => WouldYouRather2Widget(),
              ),
              (r) => false,
            );
          },
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.01, -0.32),
                child: Text(
                  'Your match is playing...',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.36),
                child: Lottie.asset(
                  'assets/lottie_animations/81-beating-heart.json',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.07, -0.96),
                child: Image.asset(
                  'assets/images/logo_arianna.png',
                  height: 100,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
