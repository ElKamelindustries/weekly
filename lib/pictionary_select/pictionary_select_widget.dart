import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pictionary1/pictionary1_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PictionarySelectWidget extends StatefulWidget {
  const PictionarySelectWidget({Key key}) : super(key: key);

  @override
  _PictionarySelectWidgetState createState() => _PictionarySelectWidgetState();
}

class _PictionarySelectWidgetState extends State<PictionarySelectWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.07, -0.96),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Image.asset(
                  'assets/images/logo_arianna.png',
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.32),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'Pick a Pic!',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Oswald',
                    color: Color(0xFF403667),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.panel,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pictionary1Widget(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(8),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          'assets/images/mario-and-luigi.jpeg',
                          width: 200,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.9, 0),
                        child: Text(
                          '\"Mario and Luigi\"',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.panel,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.network(
                        'https://lh3.googleusercontent.com/UXPCV4viIy6CVJtsVqY6Vx8EMaQxAX1n_dg1qAnSMIpm5EhgXnGJTSuXi9vyGxAF',
                        width: 200,
                        height: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.78, 0),
                      child: Text(
                        '\"Apollo 11\"',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
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
