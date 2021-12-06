import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../personal_questions2/personal_questions2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalQuestionsWidget extends StatefulWidget {
  const PersonalQuestionsWidget({Key key}) : super(key: key);

  @override
  _PersonalQuestionsWidgetState createState() =>
      _PersonalQuestionsWidgetState();
}

class _PersonalQuestionsWidgetState extends State<PersonalQuestionsWidget> {
  String catagoryFiltersValue;
  int countControllerValue1;
  int countControllerValue2;
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
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
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF9E9E9E),
                              width: 1,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? Color(0xFF403667)
                                  : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? Color(0xFF403667)
                                  : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Color(0xFF403667),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            count: countControllerValue1 ??= 18,
                            updateCount: (count) =>
                                setState(() => countControllerValue1 = count),
                            stepSize: 1,
                            minimum: 18,
                            maximum: 100,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Height (in cm)',
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF9E9E9E),
                              width: 1,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? Color(0xFF403667)
                                  : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? Color(0xFF403667)
                                  : Color(0xFFEEEEEE),
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: GoogleFonts.getFont(
                                'Roboto',
                                color: Color(0xFF403667),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            count: countControllerValue2 ??= 150,
                            updateCount: (count) =>
                                setState(() => countControllerValue2 = count),
                            stepSize: 1,
                            minimum: 0,
                            maximum: 250,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
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
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowRadioButton(
                              options: ['Male', 'Female'],
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Sexual Orientation',
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
                                'Heterosexual',
                                'Gay',
                                'Lesbian',
                                'Bisexual'
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
                              builder: (context) => PersonalQuestions2Widget(),
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
