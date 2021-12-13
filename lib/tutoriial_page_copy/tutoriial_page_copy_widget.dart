import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutoriialPageCopyWidget extends StatefulWidget {
  const TutoriialPageCopyWidget({Key key}) : super(key: key);

  @override
  _TutoriialPageCopyWidgetState createState() =>
      _TutoriialPageCopyWidgetState();
}

class _TutoriialPageCopyWidgetState extends State<TutoriialPageCopyWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.background,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: double.infinity,
              height: 500,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: PageView(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                              child: Image.asset(
                                'assets/images/logo_arianna.png',
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                              child: Text(
                                'Every week you will be matched with a new and interesting person according to your interests',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SvgPicture.network(
                                    'https://static.neris-assets.com/images/personality-types/avatars/estp-entrepreneur.svg',
                                    width: 175,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    'assets/images/infp-mediator.png',
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                              child: Text(
                                'Once a day you\'ll be able to interact and get to slowly know each other by discovering hints and facts about them.\nAt the end of the week you\'ll be able to exchange your contact information and continue outside of the app',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                              child: Image.asset(
                                'assets/images/logo_arianna.png',
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                              child: Text(
                                'Today is MATCH DAY ! \nYour new match is:',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, -0.85),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 250,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: SvgPicture.asset(
                                          'assets/images/3349.svg',
                                          width: 200,
                                          height: 200,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Container(
                                            width: 100,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'Alice, 23',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
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
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, -0.95),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 20, 15, 0),
                                  child: Text(
                                    'Let\'s see what activities you two will be able to do together, it\'s the begining of a new journey',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, -0.2),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: NavBarPage(
                                            initialPage: 'HomePage_First'),
                                      ),
                                    );
                                  },
                                  text: 'Go To Activities',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: FlutterFlowTheme.secondaryColor,
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: SmoothPageIndicator(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        count: 2,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) {
                          pageViewController.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        effect: ExpandingDotsEffect(
                          expansionFactor: 2,
                          spacing: 8,
                          radius: 16,
                          dotWidth: 16,
                          dotHeight: 16,
                          dotColor: Color(0xFF9E9E9E),
                          activeDotColor: FlutterFlowTheme.secondaryColor,
                          paintStyle: PaintingStyle.fill,
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
    );
  }
}
