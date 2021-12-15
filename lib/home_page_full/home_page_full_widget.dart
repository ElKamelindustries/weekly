import '../components/spacer10_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../pictionary_greeter/pictionary_greeter_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageFullWidget extends StatefulWidget {
  const HomePageFullWidget({Key key}) : super(key: key);

  @override
  _HomePageFullWidgetState createState() => _HomePageFullWidgetState();
}

class _HomePageFullWidgetState extends State<HomePageFullWidget>
    with TickerProviderStateMixin {
  PageController activitiesController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'pageViewOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 800,
      delay: 500,
      fadeIn: true,
      slideOffset: Offset(0, 100),
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
      backgroundColor: Color(0xFFF4D6CC),
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
                    height: 665,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
                          child: PageView(
                            controller: activitiesController ??=
                                PageController(initialPage: 6),
                            scrollDirection: Axis.horizontal,
                            children: [
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandablePanel(
                                          header: Text(
                                            'What happened so far',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.title3,
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.panel,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Text(
                                                'You have just met your new match, Alice what new stories await you ?',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.panel,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 10, 15, 10),
                                                  child: Text(
                                                    'You have just met your new match, Alice what new stories await you ?',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0x8A000000),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Spacer10Widget(),
                                              ),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      reverseDuration: Duration(
                                                          milliseconds: 100),
                                                      child: NavBarPage(
                                                          initialPage:
                                                              'Match_Profile_Full'),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 75,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'She really likes K-pop , who would have thought ?',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer10Widget(),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 1),
                                                      reverseDuration: Duration(
                                                          milliseconds: 1),
                                                      child: NavBarPage(
                                                          initialPage:
                                                              'Match_Profile_Full'),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'It seems that you two have a matching personality type ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: Icons.expand_more,
                                            collapseIcon:
                                                Icons.expand_less_outlined,
                                            iconSize: 25,
                                            iconColor:
                                                FlutterFlowTheme.secondaryColor,
                                          ),
                                        ),
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
                                        'Create a Story ! ',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandableNotifier(
                                          initialExpanded: true,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'What happened so far',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.title3,
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.panel,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 10, 15, 10),
                                                child: Text(
                                                  'Telling a story can ignite chemistry.\nFind out how..',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0x8A000000),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'Telling a story can ignite chemistry.\nFind out how..',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Spacer10Widget(),
                                                ),
                                                InkWell(
                                                  onDoubleTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .leftToRight,
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                        child: NavBarPage(
                                                            initialPage:
                                                                'HomePage_Full'),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .panel,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 10,
                                                                  15, 10),
                                                      child: Text(
                                                        'You are both very creative people ',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Spacer10Widget(),
                                                InkWell(
                                                  onDoubleTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .leftToRight,
                                                        duration: Duration(
                                                            milliseconds: 1),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    1),
                                                        child: NavBarPage(
                                                            initialPage:
                                                                'Match_Profile_Full'),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .panel,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 10,
                                                                  15, 10),
                                                      child: Text(
                                                        'And you two also share a passion for cooking and partying !',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: Icons.expand_more,
                                              collapseIcon:
                                                  Icons.expand_less_outlined,
                                              iconSize: 25,
                                              iconColor:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                        ),
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
                                        'Never Have I Ever',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandableNotifier(
                                          initialExpanded: true,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'What happened so far',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.title3,
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.panel,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 10, 15, 10),
                                                child: Text(
                                                  'How daring can you two be ? \nLet\'s find out how adventurous you can be ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0x8A000000),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'How daring can you  be ? \nLet\'s find out how adventurous you can be  ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Spacer10Widget(),
                                                ),
                                                InkWell(
                                                  onDoubleTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .leftToRight,
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                        child: NavBarPage(
                                                            initialPage:
                                                                'Match_Profile_Full'),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .panel,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 10,
                                                                  15, 10),
                                                      child: Text(
                                                        'You could use some more spice , but a party with you two will surely be a night to remember!',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Spacer10Widget(),
                                              ],
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: Icons.expand_more,
                                              collapseIcon:
                                                  Icons.expand_less_outlined,
                                              iconSize: 25,
                                              iconColor:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                        ),
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
                                        'What\'s That Tune ?',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandableNotifier(
                                          initialExpanded: true,
                                          child: ExpandablePanel(
                                            header: Text(
                                              'What happened so far',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.title3,
                                            ),
                                            collapsed: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 70,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.panel,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 10, 15, 10),
                                                child: Text(
                                                  'Let\'s see how much are you in tune.\nCan you guess her songs? ',
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0x8A000000),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'Let\'s see how much are you in tune.\nCan you guess her songs? ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Spacer10Widget(),
                                                ),
                                                InkWell(
                                                  onDoubleTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .leftToRight,
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                        child: NavBarPage(
                                                            initialPage:
                                                                'Match_Profile_Full'),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .panel,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(15, 10,
                                                                  15, 10),
                                                      child: Text(
                                                        'Good catch, you both like the Queen!\nShe will be surprised when she finds out your love for astrology',
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8A000000),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Spacer10Widget(),
                                              ],
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: Icons.expand_more,
                                              collapseIcon:
                                                  Icons.expand_less_outlined,
                                              iconSize: 25,
                                              iconColor:
                                                  FlutterFlowTheme.primaryColor,
                                            ),
                                          ),
                                        ),
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
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.secondaryColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Lottie.asset(
                                          'assets/lottie_animations/63812-gradient-background_(1).json',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 300,
                                          fit: BoxFit.fitWidth,
                                          animate: true,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.68),
                                      child: Text(
                                        'Let\'s Chat!',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandablePanel(
                                          header: Text(
                                            'What happened so far',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.title3,
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.panel,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Text(
                                                'Is this your lucky day ? You have a limited time to chat, if no one answers although your match will be lost!',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.panel,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 10, 15, 10),
                                                  child: Text(
                                                    'Is this your lucky day ? You have a limited time to chat, if no one answers although your match will be lost!',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0x8A000000),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Spacer10Widget(),
                                              ),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      reverseDuration: Duration(
                                                          milliseconds: 100),
                                                      child: NavBarPage(
                                                          initialPage:
                                                              'Match_Profile_Full'),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'She would  like to travel to Nepal at least once , who wouldn\'t ?\nYou have exchanged profile pictures',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer10Widget(),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: Icons.expand_more,
                                            collapseIcon:
                                                Icons.expand_less_outlined,
                                            iconSize: 25,
                                            iconColor:
                                                FlutterFlowTheme.primaryColor,
                                          ),
                                        ),
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
                                        'Audio Game',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandablePanel(
                                          header: Text(
                                            'What happened so far',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.title3,
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.panel,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Text(
                                                'Will you make yourt partner laugh ? \nThis is the ultimate test of your comedic skills ',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.panel,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(15, 10, 15, 10),
                                                  child: Text(
                                                    'Will you make yourt partner laugh ? \nThis is the ultimate test of your comedic skills ',
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0x8A000000),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Spacer10Widget(),
                                              ),
                                              InkWell(
                                                onDoubleTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      reverseDuration: Duration(
                                                          milliseconds: 100),
                                                      child: NavBarPage(
                                                          initialPage:
                                                              'Match_Profile_Full'),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        FlutterFlowTheme.panel,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 10, 15, 10),
                                                    child: Text(
                                                      'You did it ! You\'re one step closer to the end of the week, which surprises will await you ? ',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0x8A000000),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer10Widget(),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: false,
                                          ),
                                        ),
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
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: PictionaryGreeterWidget(),
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
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, -0.68),
                                      child: Text(
                                        'Pictionary ',
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
                                      alignment: AlignmentDirectional(0, 0.5),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        color: FlutterFlowTheme.background,
                                        child: ExpandablePanel(
                                          header: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 0, 10),
                                            child: Text(
                                              'Today',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.title3,
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.panel,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Text(
                                                'This is it , your last day, but will it be your last activity with Alice ? Tap to find out ',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ).animated([
                                            animationsMap[
                                                'containerOnPageLoadAnimation']
                                          ]),
                                          expanded: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.panel,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 10, 15, 10),
                                              child: Text(
                                                'This is it , your last day, but will it be your last activity with Alice ? Tap to find out ',
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x8A000000),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: false,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: false,
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
                          alignment: AlignmentDirectional(0, 0.88),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: activitiesController ??=
                                  PageController(initialPage: 6),
                              count: 7,
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
          ],
        ),
      ),
    );
  }
}
