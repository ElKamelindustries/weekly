import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../would_you_rather_option/would_you_rather_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Q2ResultWidget extends StatefulWidget {
  const Q2ResultWidget({Key key}) : super(key: key);

  @override
  _Q2ResultWidgetState createState() => _Q2ResultWidgetState();
}

class _Q2ResultWidgetState extends State<Q2ResultWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 90,
      fadeIn: true,
      slideOffset: Offset(30, 0),
    ),
    'cardOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 100,
      fadeIn: true,
      slideOffset: Offset(50, 0),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 110,
      fadeIn: true,
      slideOffset: Offset(100, 0),
    ),
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 120,
      fadeIn: true,
      slideOffset: Offset(100, 0),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

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
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'You asked :',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.panel,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Text(
                    'You are cursed to listen only to one of these two genres, what would you pick ?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.32),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'She replied : ',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation1']]),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.panel,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                  child: Text(
                    'I want to listen only to K-POP for the rest of my days. \nUnexpected ?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ).animated([animationsMap['cardOnPageLoadAnimation']]),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.32),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Alice is now choosing\n her question for you...',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation2']]),
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
                        builder: (context) => WouldYouRatherOptionWidget(),
                      ),
                    );
                  },
                  child: Lottie.asset(
                    'assets/lottie_animations/lf30_editor_n1e2rc96.json',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                    frameRate: FrameRate(30),
                    animate: true,
                  ),
                ).animated(
                    [animationsMap['lottieAnimationOnPageLoadAnimation']]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
