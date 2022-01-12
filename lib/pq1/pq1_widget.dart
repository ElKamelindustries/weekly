import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pq2/pq2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Pq1Widget extends StatefulWidget {
  const Pq1Widget({Key key}) : super(key: key);

  @override
  _Pq1WidgetState createState() => _Pq1WidgetState();
}

class _Pq1WidgetState extends State<Pq1Widget> with TickerProviderStateMixin {
  String radioButtonValue1;
  String radioButtonValue2;
  String radioButtonValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'cardOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 200,
      fadeIn: true,
      slideOffset: Offset(100, 0),
      scale: 0.9,
    ),
    'cardOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 200,
      fadeIn: true,
      slideOffset: Offset(100, 0),
      scale: 0.9,
    ),
    'rowOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 900,
      delay: 200,
      fadeIn: true,
      slideOffset: Offset(50, 0),
    ),
  };

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
      backgroundColor: FlutterFlowTheme.panel,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/temavalentine.png',
            ).image,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/logo_arianna.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.background,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(360),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                    child: Text(
                      'Welcome Carlo! We would like you to answer a few questions to let us create your new profile',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ).animated([animationsMap['cardOnPageLoadAnimation1']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.background,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(360),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                    child: Text(
                      'We will use your social media contact information to get your age and your zodiac sign.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ).animated([animationsMap['cardOnPageLoadAnimation2']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.background,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.background,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Text(
                                    'Gender',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 10, 10),
                                child: FlutterFlowRadioButton(
                                  options: [
                                    'Male',
                                    'Female',
                                    'Non-binary',
                                    'Other'
                                  ],
                                  onChanged: (value) {
                                    setState(() => radioButtonValue1 = value);
                                  },
                                  optionHeight: 25,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  buttonPosition: RadioButtonPosition.left,
                                  direction: Axis.vertical,
                                  radioButtonColor: FlutterFlowTheme.textColor,
                                  inactiveRadioButtonColor:
                                      FlutterFlowTheme.textColor,
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.start,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.background,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.background,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Text(
                                    'Pronouns',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 10, 10),
                                child: FlutterFlowRadioButton(
                                  options: ['He', 'She', 'They/Them', 'Other'],
                                  onChanged: (value) {
                                    setState(() => radioButtonValue2 = value);
                                  },
                                  optionHeight: 25,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                                  buttonPosition: RadioButtonPosition.left,
                                  direction: Axis.vertical,
                                  radioButtonColor: FlutterFlowTheme.textColor,
                                  inactiveRadioButtonColor:
                                      FlutterFlowTheme.textColor,
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.start,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.background,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.background,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15, 10, 15, 10),
                                    child: Text(
                                      'Sexual \nOrientation',
                                      textAlign: TextAlign.center,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.textColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 10),
                                  child: FlutterFlowRadioButton(
                                    options: [
                                      'Heterosexual',
                                      'Homosexual',
                                      'Bisexual',
                                      'Pansexual',
                                      'Asexual',
                                      'Other'
                                    ],
                                    onChanged: (value) {
                                      setState(() => radioButtonValue3 = value);
                                    },
                                    optionHeight: 25,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor:
                                        FlutterFlowTheme.textColor,
                                    inactiveRadioButtonColor:
                                        FlutterFlowTheme.textColor,
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 17.5, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: Pq2Widget(),
                                  ),
                                );
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFF947BD3),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 10, 15, 10),
                                  child: Text(
                                    'Continue',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).animated([animationsMap['rowOnPageLoadAnimation']]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
