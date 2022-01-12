import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pictionary_select/pictionary_select_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PictionaryGreeterWidget extends StatefulWidget {
  const PictionaryGreeterWidget({Key key}) : super(key: key);

  @override
  _PictionaryGreeterWidgetState createState() =>
      _PictionaryGreeterWidgetState();
}

class _PictionaryGreeterWidgetState extends State<PictionaryGreeterWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 90,
      fadeIn: true,
      slideOffset: Offset(30, 0),
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
                  'Welcome to Pictionary!',
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
                    'You will have to choose one picture and guide Alice with hints to let her guess it.Then Alice will do the same ',
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
              alignment: AlignmentDirectional(0, -0.88),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'Are you ready ?',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation']]),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -2.75),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 300),
                      reverseDuration: Duration(milliseconds: 300),
                      child: PictionarySelectWidget(),
                    ),
                  );
                },
                child: Lottie.asset(
                  'assets/lottie_animations/lf30_editor_psol5kjx.json',
                  width: 400,
                  height: 400,
                  fit: BoxFit.fill,
                  frameRate: FrameRate(30),
                  animate: true,
                ),
              ).animated([animationsMap['lottieAnimationOnPageLoadAnimation']]),
            ),
          ],
        ),
      ),
    );
  }
}
