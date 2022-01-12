import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../new_hint_page/new_hint_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WouldYouRather2SelectedWidget extends StatefulWidget {
  const WouldYouRather2SelectedWidget({Key key}) : super(key: key);

  @override
  _WouldYouRather2SelectedWidgetState createState() =>
      _WouldYouRather2SelectedWidgetState();
}

class _WouldYouRather2SelectedWidgetState
    extends State<WouldYouRather2SelectedWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEFAE9D),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.49),
              child: Material(
                color: Colors.transparent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/spy.jpg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFB45A42),
                      width: 4,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: AutoSizeText(
                      'SPY',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Oswald',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.97),
              child: Text(
                'What would you do with that superpower?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF403667),
                  fontSize: 28,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.77),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewHintPageWidget(),
                    ),
                    (r) => false,
                  );
                },
                text: 'Submit',
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
              alignment: AlignmentDirectional(0, 0.35),
              child: Material(
                color: Colors.transparent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/steal.jpg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF403667),
                      width: 4,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: AutoSizeText(
                      'STEAL',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Oswald',
                        color: Color(0xFFE87E69),
                        fontSize: 24,
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
