import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../social_media_share/social_media_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalDayCopyWidget extends StatefulWidget {
  const FinalDayCopyWidget({Key key}) : super(key: key);

  @override
  _FinalDayCopyWidgetState createState() => _FinalDayCopyWidgetState();
}

class _FinalDayCopyWidgetState extends State<FinalDayCopyWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1200,
      fadeIn: true,
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
      backgroundColor: Color(0xFFEFAE9D),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.1, -0.07),
                child: Image.asset(
                  'assets/images/cupido.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ).animated([animationsMap['imageOnPageLoadAnimation']]),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.76),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFAE9D),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF413369),
                          width: 3,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, -0.11),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 15),
                                        child: Text(
                                          'Do you want to share your contact with your partner?',
                                          textAlign: TextAlign.center,
                                          style:
                                              FlutterFlowTheme.title1.override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF413369),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              SocialMediaShareWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Yes',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 40,
                                      color: Color(0xFFB45A42),
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFE6E6E6),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 2,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'No',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 40,
                                      color: Color(0xFFF2BFB2),
                                      textStyle:
                                          FlutterFlowTheme.subtitle2.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFB45A42),
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Color(0xFFB45A42),
                                        width: 2,
                                      ),
                                      borderRadius: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.82),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Congratulations!',
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Oswald',
                          color: Color(0xFF413369),
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Divider(
                        height: 5,
                        color: Colors.transparent,
                      ),
                      Text(
                        'The week is over: you and your partner have completed all the activities we had in store for you.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Oswald',
                          color: Color(0xFFB45A42),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
