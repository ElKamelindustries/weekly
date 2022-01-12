import '../components/three_dots_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pictionary/pictionary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PictionaryThreeWidget extends StatefulWidget {
  const PictionaryThreeWidget({Key key}) : super(key: key);

  @override
  _PictionaryThreeWidgetState createState() => _PictionaryThreeWidgetState();
}

class _PictionaryThreeWidgetState extends State<PictionaryThreeWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 600,
      fadeIn: true,
      slideOffset: Offset(-50, 0),
    ),
    'threeDotsOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1200,
      fadeIn: true,
      slideOffset: Offset(50, 0),
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
      backgroundColor: Color(0xFFF4D6CC),
      body: InkWell(
        onTap: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
              reverseDuration: Duration(milliseconds: 0),
              child: PictionaryWidget(),
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF4D6CC),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x3A000000),
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Guess the object',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF090F13),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'It can be a character, animal or thing',
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.94,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.96,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 6,
                                          color: Color(0x3A000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/mario-and-luigi.jpeg',
                                        width: 100,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.75, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.panel,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Text(
                                    valueOrDefault<String>(
                                      'You have just met your new match, ',
                                      'Stalin',
                                    ),
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x8A000000),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.75, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF947BD3),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 10),
                                    child: Text(
                                      'Wrong, try again!',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.75, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF947BD3),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 10),
                                    child: Text(
                                      'They are both handsome italians',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0x8A000000),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ).animated([
                                  animationsMap['containerOnPageLoadAnimation']
                                ]),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: ThreeDotsWidget().animated([
                                animationsMap['threeDotsOnPageLoadAnimation']
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
