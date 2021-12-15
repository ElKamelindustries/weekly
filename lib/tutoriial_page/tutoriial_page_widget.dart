import '../components/greeter_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TutoriialPageWidget extends StatefulWidget {
  const TutoriialPageWidget({Key key}) : super(key: key);

  @override
  _TutoriialPageWidgetState createState() => _TutoriialPageWidgetState();
}

class _TutoriialPageWidgetState extends State<TutoriialPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.background,
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: GreeterWidget(),
        ),
      ),
    );
  }
}
