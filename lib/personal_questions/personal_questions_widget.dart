import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalQuestionsWidget extends StatefulWidget {
  const PersonalQuestionsWidget({Key key}) : super(key: key);

  @override
  _PersonalQuestionsWidgetState createState() =>
      _PersonalQuestionsWidgetState();
}

class _PersonalQuestionsWidgetState extends State<PersonalQuestionsWidget> {
  String catagoryFiltersValue;
  double sliderValue;
  String radioButtonValue;
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
          color: Color(0xFF14181B),
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
                          )
                        ],
                      ),
                    )
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
                          'Age',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF424242),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )
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
                              min: 25,
                              max: 250,
                              value: sliderValue ??= 125,
                              label: sliderValue.toString(),
                              divisions: 23,
                              onChanged: (newValue) {
                                setState(() => sliderValue = newValue);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Gender',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF424242),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowRadioButton(
                              options: [
                                'Male',
                                'Female',
                                'Cateogry 3',
                                'Category 4'
                              ],
                              onChanged: (value) {
                                setState(() => catagoryFiltersValue = value);
                              },
                              optionHeight: 36,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Color(0xFF403667),
                              inactiveRadioButtonColor: Color(0xFF403667),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Another Filter',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF424242),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowRadioButton(
                              options: [
                                'Filter 1',
                                'Filter 2',
                                'Filter 3',
                                'Filter 4'
                              ],
                              onChanged: (value) {
                                setState(() => radioButtonValue = value);
                              },
                              optionHeight: 36,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor: Color(0xFF403667),
                              inactiveRadioButtonColor: Color(0xFF403667),
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'HomePage'),
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
