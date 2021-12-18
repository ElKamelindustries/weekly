import '../final_day2/final_day2_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class FinalDayWidget extends StatefulWidget {
  const FinalDayWidget({Key key}) : super(key: key);

  @override
  _FinalDayWidgetState createState() => _FinalDayWidgetState();
}

class _FinalDayWidgetState extends State<FinalDayWidget> {
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF4D6CC),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Congratulations!',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Oswald',
                color: FlutterFlowTheme.textColor,
                fontSize: 45,
                fontWeight: FontWeight.w900,
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.panel,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                child: Text(
                  'The week is over: you and your partner have completed all the activities we had in store for you.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: FlutterFlowTheme.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 15),
              child: Lottie.asset(
                'assets/lottie_animations/lf30_editor_o2sssagb.json',
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.cover,
                repeat: false,
                animate: true,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.76),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.background,
                      borderRadius: BorderRadius.circular(30),
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
                                        style: FlutterFlowTheme.title1.override(
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
                            InkWell(
                              onDoubleTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FinalDay2Widget(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(1, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        70, 0, 0, 0),
                                    child: FlutterFlowChoiceChips(
                                      initialOption: choiceChipsValue ??= '0',
                                      options: [
                                        ChipData('Yes', Icons.celebration),
                                        ChipData('No', Icons.close_rounded)
                                      ],
                                      onChanged: (val) => setState(
                                          () => choiceChipsValue = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor: Color(0xFF947BD3),
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                        iconColor: Colors.white,
                                        iconSize: 24,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                15, 0, 15, 0),
                                        elevation: 4,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: FlutterFlowTheme.panel,
                                        textStyle:
                                            FlutterFlowTheme.bodyText2.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF262D34),
                                          fontSize: 20,
                                        ),
                                        iconColor: Color(0xFF262D34),
                                        iconSize: 24,
                                        labelPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                15, 0, 15, 0),
                                        elevation: 4,
                                      ),
                                      chipSpacing: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
