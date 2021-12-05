import '../components/spacer10_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../match_profile/match_profile_widget.dart';
import '../never_have_overview/never_have_overview_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityStackWidget extends StatefulWidget {
  const ActivityStackWidget({Key key}) : super(key: key);

  @override
  _ActivityStackWidgetState createState() => _ActivityStackWidgetState();
}

class _ActivityStackWidgetState extends State<ActivityStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      child: Stack(
        children: [
          InkWell(
            onDoubleTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NeverHaveOverviewWidget(),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://freevector-images.s3.amazonaws.com/uploads/vector/preview/40539/vecteezy_background-abstract-shapes_fj0221_generated.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.68),
            child: Text(
              'Never Have I Ever',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText1.override(
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.white,
              child: ExpandablePanel(
                header: Text(
                  'What happened so far',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.title3,
                ),
                collapsed: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x9AF578B4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                    child: Text(
                      'You have just met your new match, ${functions.findMatch()} , what interesting things will he have to say ? ',
                      style: FlutterFlowTheme.bodyText1.override(
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
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x9AF578B4),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                        child: Text(
                          'You have just met your new match, ${functions.findMatch()} , what interesting things will he have to say ? ',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0x8A000000),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Spacer10Widget(),
                    ),
                    InkWell(
                      onDoubleTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 100),
                            reverseDuration: Duration(milliseconds: 100),
                            child: MatchProfileWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x9AF578B4),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                          child: Text(
                            'She would really like to travel to Nepal at least once , who wouldn\'t ? ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0x8A000000),
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
                            type: PageTransitionType.leftToRight,
                            duration: Duration(milliseconds: 1),
                            reverseDuration: Duration(milliseconds: 1),
                            child: MatchProfileWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x9AF578B4),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                          child: Text(
                            'It seems that you two have a matching personality type ',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0x8A000000),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                theme: ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.expand_more,
                  collapseIcon: Icons.expand_less_outlined,
                  iconSize: 25,
                  iconColor: FlutterFlowTheme.primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
