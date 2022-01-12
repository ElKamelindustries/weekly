import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalDay2Widget extends StatefulWidget {
  const FinalDay2Widget({Key key}) : super(key: key);

  @override
  _FinalDay2WidgetState createState() => _FinalDay2WidgetState();
}

class _FinalDay2WidgetState extends State<FinalDay2Widget> {
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
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.textColor,
                fontSize: 34,
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
                  'Alice agreed to share her \ncontact here it is !',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.textColor,
                    fontSize: 20,
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      width: 260,
                      height: 260,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/ALICE.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.85),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 250, 0, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFF947BD3),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                          child: Text(
                            '@aaaliceTri',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
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
            Align(
              alignment: AlignmentDirectional(0, 0.76),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.background,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 15),
                      child: Text(
                        'See you soon!',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
