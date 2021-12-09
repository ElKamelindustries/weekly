import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaShareWidget extends StatefulWidget {
  const SocialMediaShareWidget({Key key}) : super(key: key);

  @override
  _SocialMediaShareWidgetState createState() => _SocialMediaShareWidgetState();
}

class _SocialMediaShareWidgetState extends State<SocialMediaShareWidget> {
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
          color: Color(0xFFEFAE9D),
        ),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0.52),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                              'Choose which social media \nshare with your partner',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Oswald',
                                color: Color(0xFFB45A42),
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 3,
                      color: Color(0xFFB45A42),
                    ),
                    Divider(
                      height: 35,
                      thickness: 3,
                      color: Colors.transparent,
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
                            size: 60,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
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
                            size: 60,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Divider(),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 80,
                          icon: FaIcon(
                            FontAwesomeIcons.twitterSquare,
                            color: Color(0xFF403667),
                            size: 60,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Divider(),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 80,
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: Color(0xFF403667),
                            size: 60,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        )
                      ],
                    ),
                    Divider(
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button-Login pressed ...');
                              },
                              text: 'Share',
                              options: FFButtonOptions(
                                width: 230,
                                height: 60,
                                color: Color(0xFFEA9A8B),
                                textStyle: FlutterFlowTheme.title2.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
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
            )
          ],
        ),
      ),
    );
  }
}
