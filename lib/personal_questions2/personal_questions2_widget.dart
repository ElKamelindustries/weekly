import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../personal_questions3/personal_questions3_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalQuestions2Widget extends StatefulWidget {
  const PersonalQuestions2Widget({Key key}) : super(key: key);

  @override
  _PersonalQuestions2WidgetState createState() =>
      _PersonalQuestions2WidgetState();
}

class _PersonalQuestions2WidgetState extends State<PersonalQuestions2Widget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  double sliderValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF14181B),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/temavalentine.png',
            ).image,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo_arianna.png',
                            width: 240,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Occupation',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF424242),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown(
                            options: [
                              'Student',
                              'Doctor',
                              'Unemployed',
                              'Waiter',
                              'Professor'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => dropDownValue1 = val),
                            width: 180,
                            height: 50,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF403667),
                            ),
                            fillColor: Colors.white,
                            elevation: 0,
                            borderColor: Colors.transparent,
                            borderWidth: 50,
                            borderRadius: 50,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Born in ',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF424242),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowDropDown(
                                  options: ['UK', 'Italy', 'France', 'Spain']
                                      .toList(),
                                  onChanged: (val) =>
                                      setState(() => dropDownValue2 = val),
                                  width: 180,
                                  height: 50,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF403667),
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 50,
                                  borderRadius: 50,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Currently located in',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF424242),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown(
                            options:
                                ['UK', 'Spain', 'France', 'Italy'].toList(),
                            onChanged: (val) =>
                                setState(() => dropDownValue3 = val),
                            width: 180,
                            height: 50,
                            textStyle: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF403667),
                            ),
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 50,
                            borderRadius: 50,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'How much do you like animals?',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF424242),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Slider(
                              activeColor: Color(0xFF403667),
                              inactiveColor: Color(0xFFDBE2E7),
                              min: 0,
                              max: 10,
                              value: sliderValue ??= 0,
                              label: sliderValue.toString(),
                              divisions: 10,
                              onChanged: (newValue) {
                                setState(() => sliderValue = newValue);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xFF403667),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalQuestions3Widget(),
                            ),
                          );
                        },
                        text: 'Next',
                        options: FFButtonOptions(
                          width: 230,
                          height: 60,
                          color: Color(0xFFEA9A8B),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF403667),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Color(0x00403667),
                            width: 1,
                          ),
                          borderRadius: 8,
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
    );
  }
}
