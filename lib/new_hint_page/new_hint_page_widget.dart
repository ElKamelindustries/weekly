import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NewHintPageWidget extends StatefulWidget {
  const NewHintPageWidget({Key key}) : super(key: key);

  @override
  _NewHintPageWidgetState createState() => _NewHintPageWidgetState();
}

class _NewHintPageWidgetState extends State<NewHintPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEFAE9D),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.93, -0.58),
                child: Image.asset(
                  'assets/images/arrow.png',
                  width: 200,
                  height: 80,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.39, 0.05),
                child: Image.asset(
                  'assets/images/arrow.png',
                  width: 200,
                  height: 80,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.08, 0.65),
                child: Image.asset(
                  'assets/images/arrow.png',
                  width: 200,
                  height: 80,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.28),
                child: Text(
                  'J.R.R. Tolkien',
                  style: FlutterFlowTheme.bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.34),
                child: Text(
                  'The Lord of the Rings',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'HomePage_Full'),
                      ),
                    );
                  },
                  text: 'Collect',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF403667),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.63),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/LOTR.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.82),
                child: Text(
                  'Here new hints on your match',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.secondaryColor,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.28, 0.28),
                child: Text(
                  'Eagles',
                  style: FlutterFlowTheme.bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.36, 0.23),
                child: Text(
                  'Hotel California',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.39, 0.03),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/HotelCali.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.56, 0.8),
                child: Text(
                  'F. F. Coppola',
                  style: FlutterFlowTheme.bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.62, 0.76),
                child: Text(
                  'The Godfather',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.6, 0.64),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/godfather.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.92),
                child: Text(
                  'GAME OVER:',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.secondaryColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
