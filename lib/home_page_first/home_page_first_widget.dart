import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../match_profile_first_game/match_profile_first_game_widget.dart';
import '../profile_new/profile_new_widget.dart';
import '../would_you_rather_question/would_you_rather_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageFirstWidget extends StatefulWidget {
  const HomePageFirstWidget({Key key}) : super(key: key);

  @override
  _HomePageFirstWidgetState createState() => _HomePageFirstWidgetState();
}

class _HomePageFirstWidgetState extends State<HomePageFirstWidget>
    with TickerProviderStateMixin {
  PageController activitiesController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'pageViewOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.easeOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 1970,
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onPageLoad,
      duration: 800,
      delay: 50,
      fadeIn: true,
      slideOffset: Offset(45, 0),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onPageLoad,
      duration: 800,
      delay: 100,
      fadeIn: true,
      slideOffset: Offset(45, 0),
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
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 16, 25, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Timeline',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 10,
                    height: 650,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
                          child: PageView(
                            controller: activitiesController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 100,
                                height: 300,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child:
                                                WouldYouRatherQuestionWidget(),
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.network(
                                          'https://freevector-images.s3.amazonaws.com/uploads/vector/preview/40539/vecteezy_background-abstract-shapes_fj0221_generated.jpg',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ).animated([
                                      animationsMap[
                                          'imageOnActionTriggerAnimation']
                                    ]),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.68),
                                      child: Text(
                                        'Would You Rather..',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.tertiaryColor,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1, -0.21),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 10, 0, 0),
                                        child: Text(
                                          'Today',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEA9A8B),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 10, 15, 10),
                                            child: Text(
                                              'Your first activity is  here !  \nIt\'s time to interact.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                                fontSize: 22,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                        ).animated([
                                          animationsMap[
                                              'containerOnPageLoadAnimation1']
                                        ]),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.4),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEA9A8B),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 10, 15, 10),
                                            child: Text(
                                              'Choose the questions for your partner and take turns to answer',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x8A000000),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ).animated([
                                          animationsMap[
                                              'containerOnPageLoadAnimation2']
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 300,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        'https://freevector-images.s3.amazonaws.com/uploads/vector/preview/40539/vecteezy_background-abstract-shapes_fj0221_generated.jpg',
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.68),
                                      child: Text(
                                        'Coming Soon!',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.tertiaryColor,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.23),
                                      child: Text(
                                        'What is going to happen next ? ',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.title3,
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEA9A8B),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 10, 15, 10),
                                          child: Text(
                                            'A new activity awaits you tomorrow.\nIt\'s surely going to be exciting!',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0x8A000000),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.9),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0),
                            child: SmoothPageIndicator(
                              controller: activitiesController ??=
                                  PageController(initialPage: 0),
                              count: 2,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                activitiesController.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 30,
                                radius: 40,
                                dotWidth: 20,
                                dotHeight: 18,
                                dotColor: Color(0xFF95A1AC),
                                activeDotColor: FlutterFlowTheme.secondaryColor,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).animated(
                      [animationsMap['pageViewOnActionTriggerAnimation']]),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.panel,
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileNewWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.home_rounded,
                            color: Color(0xFF413369),
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MatchProfileFirstGameWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
