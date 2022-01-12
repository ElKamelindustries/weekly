import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../wait_page_q1/wait_page_q1_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WouldYouRatherQuestionWidget extends StatefulWidget {
  const WouldYouRatherQuestionWidget({Key key}) : super(key: key);

  @override
  _WouldYouRatherQuestionWidgetState createState() =>
      _WouldYouRatherQuestionWidgetState();
}

class _WouldYouRatherQuestionWidgetState
    extends State<WouldYouRatherQuestionWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 800,
      delay: 500,
      fadeIn: true,
      slideOffset: Offset(0, 80),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Text(
                'Would you rather...',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF403667),
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ).animated([animationsMap['textOnPageLoadAnimation']]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 25, 15, 25),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.panel,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, -0.39),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 12, 15, 10),
                    child: Text(
                      'Select which question your partner will have to answer, we will pick the options based on your tastes',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF403667),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(55, 15, 15, 10),
              child: Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Select',
                    color: FlutterFlowTheme.textColor,
                    icon: Icons.brightness_1_rounded,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: WaitPageQ1Widget(),
                        ),
                      );
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.brightness_1_outlined,
                    color: Color(0x6F000000),
                    size: 30,
                  ),
                  title: Text(
                    'Where would you be ? ',
                    style: FlutterFlowTheme.title3,
                  ),
                  subtitle: Text(
                    'Traveller or bed-dweller ?',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xAE000000),
                    ),
                  ),
                  tileColor: Color(0xFF947BD3),
                  dense: false,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(55, 15, 15, 10),
              child: Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Select',
                    color: FlutterFlowTheme.textColor,
                    icon: Icons.brightness_1_rounded,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: WaitPageQ1Widget(),
                        ),
                      );
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.brightness_1_outlined,
                    color: Color(0x6F000000),
                    size: 30,
                  ),
                  title: Text(
                    'Singer or dancer ?',
                    style: FlutterFlowTheme.title3,
                  ),
                  subtitle: Text(
                    'Whenever you hear a song',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xAE000000),
                    ),
                  ),
                  tileColor: Color(0xFF947BD3),
                  dense: false,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(55, 15, 15, 10),
              child: Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Select',
                    color: FlutterFlowTheme.textColor,
                    icon: Icons.brightness_1_rounded,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: WaitPageQ1Widget(),
                        ),
                      );
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.brightness_1_outlined,
                    color: Color(0x6F000000),
                    size: 30,
                  ),
                  title: Text(
                    'What would you give up ? ',
                    style: FlutterFlowTheme.title3,
                  ),
                  tileColor: Color(0xFF947BD3),
                  dense: false,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(55, 15, 15, 10),
              child: Slidable(
                actionPane: const SlidableScrollActionPane(),
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Select',
                    color: FlutterFlowTheme.textColor,
                    icon: Icons.brightness_1_rounded,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: WaitPageQ1Widget(),
                        ),
                      );
                    },
                  ),
                ],
                child: ListTile(
                  leading: Icon(
                    Icons.brightness_1_outlined,
                    color: Color(0x6F000000),
                    size: 30,
                  ),
                  title: Text(
                    'What actor would you be ?',
                    style: FlutterFlowTheme.title3,
                  ),
                  tileColor: Color(0xFF947BD3),
                  dense: false,
                  contentPadding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(0),
                    ),
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
