import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile_new/profile_new_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileLandingPageWidget extends StatefulWidget {
  const ProfileLandingPageWidget({Key key}) : super(key: key);

  @override
  _ProfileLandingPageWidgetState createState() =>
      _ProfileLandingPageWidgetState();
}

class _ProfileLandingPageWidgetState extends State<ProfileLandingPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
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
      backgroundColor: Color(0xFF14181B),
      body: InkWell(
        onTap: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 300),
              reverseDuration: Duration(milliseconds: 300),
              child: ProfileNewWidget(),
            ),
          );
        },
        child: Container(
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.3),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                          child: Text(
                            'We are currently building your\nprofile',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.secondaryColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.45),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                            child: Image.network(
                              'https://acegif.com/wp-content/uploads/loading-58.gif',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).animated([animationsMap['columnOnActionTriggerAnimation']]),
          ),
        ),
      ),
    );
  }
}
