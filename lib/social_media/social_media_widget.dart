import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../insert_social_media/insert_social_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({Key key}) : super(key: key);

  @override
  _SocialMediaWidgetState createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
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
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              'assets/images/logo_arianna.png',
                              width: 240,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Choose a social media to link to your account  ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
                thickness: 3,
                indent: 10,
                color: Colors.white,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 80,
                    fillColor: Color(0x00EA9A8B),
                    icon: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Color(0xFF403667),
                      size: 50,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InsertSocialMediaWidget(),
                        ),
                      );
                    },
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.transparent,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 80,
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Color(0xFF403667),
                      size: 50,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InsertSocialMediaWidget(),
                        ),
                      );
                    },
                  ),
                  Divider(),
                ],
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 80,
                icon: FaIcon(
                  FontAwesomeIcons.twitterSquare,
                  color: Color(0xFF403667),
                  size: 50,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InsertSocialMediaWidget(),
                    ),
                  );
                },
              ),
              Divider(
                color: FlutterFlowTheme.tertiaryColor,
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 80,
                icon: FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Color(0xFF403667),
                  size: 50,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InsertSocialMediaWidget(),
                    ),
                  );
                },
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
                              builder: (context) => InsertSocialMediaWidget(),
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
