import '../components/spacer10_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NeverHaveOverviewWidget extends StatefulWidget {
  const NeverHaveOverviewWidget({Key key}) : super(key: key);

  @override
  _NeverHaveOverviewWidgetState createState() =>
      _NeverHaveOverviewWidgetState();
}

class _NeverHaveOverviewWidgetState extends State<NeverHaveOverviewWidget> {
  PageController pageViewController1;
  PageController pageViewController2;
  PageController pageViewController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            child: ExpandablePanel(
              header: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Text(
                  'Never Have I  Ever',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              collapsed: Spacer10Widget(),
              expanded: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0x9AF578B4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 2, 15, 2),
                    child: Text(
                      'Please insert activity description here',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF2E2E2F),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: false,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Stack(
                        children: [
                          PageView(
                            controller: pageViewController1 ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 1,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        'https://images.lacucinaitaliana.it/wp-content/uploads/2017/02/pizza-con-ananas.jpg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.03),
                                      child: Text(
                                        'Pizza Ananas',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 1,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        'https://images.lacucinaitaliana.it/wp-content/uploads/2017/02/pizza-con-ananas.jpg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      decoration: BoxDecoration(
                                        color: Color(0x41FB0B85),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0, -0.03),
                                        child: Text(
                                          'You : Yes !',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 1,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        'https://images.lacucinaitaliana.it/wp-content/uploads/2017/02/pizza-con-ananas.jpg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                1,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      decoration: BoxDecoration(
                                        color: Color(0x41FB0B85),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0, -0.03),
                                        child: Text(
                                          'Match : Nah',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.98, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: SmoothPageIndicator(
                                controller: pageViewController1 ??=
                                    PageController(initialPage: 0),
                                count: 3,
                                axisDirection: Axis.vertical,
                                onDotClicked: (i) {
                                  pageViewController1.animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect: ExpandingDotsEffect(
                                  expansionFactor: 1.5,
                                  spacing: 1,
                                  radius: 16,
                                  dotWidth: 10,
                                  dotHeight: 10,
                                  dotColor: Color(0xFF9E9E9E),
                                  activeDotColor: FlutterFlowTheme.primaryColor,
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
              Spacer10Widget(),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController2 ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.03),
                                  child: Text(
                                    'Been to Paris ?',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x41FB0B85),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.03),
                                    child: Text(
                                      'You : Yes !',
                                      textAlign: TextAlign.center,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x41FB0B85),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.03),
                                    child: Text(
                                      'Match : Nah',
                                      textAlign: TextAlign.center,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.98, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: SmoothPageIndicator(
                            controller: pageViewController2 ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.vertical,
                            onDotClicked: (i) {
                              pageViewController2.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 1.5,
                              spacing: 1,
                              radius: 16,
                              dotWidth: 10,
                              dotHeight: 10,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: FlutterFlowTheme.primaryColor,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer10Widget(),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageViewController3 ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.03),
                                  child: Text(
                                    'Stolen something ',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x41FB0B85),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.03),
                                    child: Text(
                                      'You : Yes !',
                                      textAlign: TextAlign.center,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    'https://www.parigi.it/images/large/tbgc17487_parigiit-guida-di-parigi4.jpeg?v=1da1',
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x41FB0B85),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, -0.03),
                                    child: Text(
                                      'Match : Nah',
                                      textAlign: TextAlign.center,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.98, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: SmoothPageIndicator(
                            controller: pageViewController3 ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.vertical,
                            onDotClicked: (i) {
                              pageViewController3.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 1.5,
                              spacing: 1,
                              radius: 16,
                              dotWidth: 10,
                              dotHeight: 10,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: FlutterFlowTheme.primaryColor,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Spacer10Widget(),
          Spacer10Widget(),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: Color(0xFFFB0B85),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 100,
                                buttonSize: 60,
                                fillColor: FlutterFlowTheme.tertiaryColor,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 50,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.5, 0),
                            child: Text(
                              'Timeline',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
