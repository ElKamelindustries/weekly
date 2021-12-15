import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../would_you_rather2_option/would_you_rather2_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WaitPage1OptionWidget extends StatefulWidget {
  const WaitPage1OptionWidget({Key key}) : super(key: key);

  @override
  _WaitPage1OptionWidgetState createState() => _WaitPage1OptionWidgetState();
}

class _WaitPage1OptionWidgetState extends State<WaitPage1OptionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.07, -0.96),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Image.asset(
                  'assets/images/logo_arianna.png',
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.32),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Alice is choosing\nthe next question...',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.36),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WouldYouRather2OptionWidget(),
                      ),
                    );
                  },
                  child: Lottie.asset(
                    'assets/lottie_animations/lf30_editor_n1e2rc96.json',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                    frameRate: FrameRate(30),
                    animate: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
